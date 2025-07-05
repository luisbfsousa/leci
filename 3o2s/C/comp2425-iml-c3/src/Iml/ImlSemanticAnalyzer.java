import org.stringtemplate.v4.*;

import error.ErrorHandling;

import java.io.IOException;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

@SuppressWarnings("CheckReturnValue")
public class ImlSemanticAnalyzer extends ImlBaseVisitor<Boolean> {
   private final Map<String, Type> symbolTable = new HashMap<>();
   private final Map<String, String> varTable = new HashMap<>();
   private final Stack<Type> typeStack = new Stack<>();
   private int scope = 0;
   private boolean hasErrors = false;

   public enum Type {
      IMAGE, LIST, NUMBER, PERCENTAGE, STRING, BOOLEAN, UNKNOWN;

      public boolean isNumeric() {
         return this == NUMBER || this == PERCENTAGE;
      }

      public boolean isImage() {
         return this == IMAGE;
      }

      public boolean isList() {
         return this == LIST;
      }

      public static Type fromString(String type) {
         switch (type) {
            case "image":
               return IMAGE;
            case "list":
               return LIST;
            case "number":
               return NUMBER;
            case "percentage":
               return PERCENTAGE;
            case "string":
               return STRING;
            case "boolean":
               return BOOLEAN;
            default:
               return UNKNOWN;
         }
      }
   }

   public boolean hasErrors() {
      return hasErrors;
   }

   @Override
   public Boolean visitProgram(ImlParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override
   public Boolean visitCommand(ImlParser.CommandContext ctx) {
      return visitChildren(ctx);
   }

   @Override
   public Boolean visitPlotImage(ImlParser.PlotImageContext ctx) {
      String varName = ctx.ID().getText();
      if (!symbolTable.containsKey(varName)) {
         ErrorHandling.printError("ERROR: Undefined variable: " + varName);
         hasErrors = true;
         return false;
      }

      Type varType = symbolTable.get(varName);
      if (varType != Type.IMAGE) {
         ErrorHandling.printError("ERROR: Expected IMAGE type for variable '" + varName + "', found " + varType);
         hasErrors = true;
         return false;
      }
      return true;
   }

   @Override
   public Boolean visitStoreImage(ImlParser.StoreImageContext ctx) {
      Boolean res = null;
      return visitChildren(ctx);
      // return res;
   }

   @Override
   public Boolean visitAssignStat(ImlParser.AssignStatContext ctx) {
      String varName = ctx.ID().getText();
      boolean isNewDeclaration = ctx.types() != null;

      if (!visit(ctx.expr())) {
         ErrorHandling.printError(ctx.start.getLine() + ": ERROR: Invalid expression in assignment");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError(ctx.start.getLine() + ": ERROR: Type stack error in assignment");
         hasErrors = true;
         return false;
      }

      Type exType = typeStack.pop();
      Type declaredType = Type.UNKNOWN;

      if (isNewDeclaration) {
         declaredType = Type.fromString(ctx.types().getText().trim());

         if (declaredType.isNumeric() && exType.isNumeric()) {
            if (exType == Type.PERCENTAGE) {
               exType = Type.NUMBER;
            }
         }
         // Add explicit IMAGE to NUMBER conversion check
         else if (declaredType == Type.NUMBER && exType == Type.IMAGE) {
            ErrorHandling.printError("ERROR: Cannot convert IMAGE to NUMBER for variable '" + varName + "'");
            hasErrors = true;
            return false;
         } else if (declaredType != Type.UNKNOWN && exType != declaredType) {
            ErrorHandling.printError("ERROR: Type mismatch for variable '" + varName + "': expected " +
                  declaredType + ", found " + exType);
            hasErrors = true;
            return false;
         }

         symbolTable.put(varName, exType);
      } else {
         // For reassignment, check if variable exists
         if (!symbolTable.containsKey(varName)) {
            ErrorHandling.printError("ERROR: Cannot reassign undefined variable: " + varName);
            hasErrors = true;
            return false;
         }

         // Check type compatibility for reassignment
         Type existingType = symbolTable.get(varName);
         if (existingType != exType) {
            ErrorHandling.printError("ERROR: Type mismatch for reassignment to '" + varName +
                  "': expected " + existingType + ", found " + exType);
            hasErrors = true;
            return false;
         }
      }

      return true;
   }

   @Override
   public Boolean visitIfStat(ImlParser.IfStatContext ctx) {
      // controlCommand: 'if' expr 'then' thenCommands+=command* ('else'
      // elseCommands+=command*)? 'done'

      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: expression is null");
         hasErrors = true;
         return false;
      }

      Type condType = typeStack.pop();
      if (condType != Type.BOOLEAN) {
         ErrorHandling.printError("ERROR: Condition in if statement must be BOOLEAN, found " + condType);
         // System.err.println("Condition in if statement must be BOOLEAN, found " +
         // condType);
         hasErrors = true;
         return false;
      }
      scope++;
      boolean success = true;
      for (ImlParser.CommandContext cmd : ctx.thenCommands) {
         success &= visit(cmd);
      }
      if (ctx.elseCommands != null) {
         for (ImlParser.CommandContext cmd : ctx.elseCommands) {
            success &= visit(cmd);
         }
      }
      scope--;
      return success;
   }

   @Override
   public Boolean visitUntilStat(ImlParser.UntilStatContext ctx) {
      // controlCommand: 'until' expr 'do' command* 'done'

      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: expression is null");
         hasErrors = true;
         return false;
      }

      Type condType = typeStack.pop();
      if (condType != Type.BOOLEAN) {
         ErrorHandling.printError("ERROR: Condition in until statement must be BOOLEAN, found " + condType);
         // System.err.println("Condition in until statement must be BOOLEAN, found " +
         // condType);
         hasErrors = true;
         return false;
      }
      scope++;
      boolean success = true;
      for (ImlParser.CommandContext cmd : ctx.command()) {
         success &= visit(cmd);
      }
      scope--;
      return success;
   }

   @Override
   public Boolean visitForStat(ImlParser.ForStatContext ctx) {
      // controlCommand: 'for' varType=('percentage' | 'image')? ID 'within' ID 'do'
      // command* 'done'

      String TypeString = ctx.varType != null ? ctx.varType.getText() : null;
      Type varType = TypeString != null ? Type.fromString(TypeString) : Type.UNKNOWN;

      String collectionName = ctx.ID(1).getText();
      if (!symbolTable.containsKey(collectionName)) {
         ErrorHandling.printError("ERROR: Undefined collection: " + collectionName);
         // System.err.println("Undefined collection: " + collectionName);
         hasErrors = true;
         return false;
      }

      Type collectionType = symbolTable.get(collectionName);
      if (collectionType != Type.LIST && collectionType != Type.IMAGE) {
         ErrorHandling.printError(
               "ERROR: Expected LIST or IMAGE for collection '" + collectionName + "', found " + collectionType);
         // System.err.println("Expected LIST or IMAGE for collection '" + collectionName
         // + "', found " + collectionType);
         hasErrors = true;
         return false;
      }

      if (varType != Type.UNKNOWN) {
         if (collectionType == Type.IMAGE && varType != Type.PERCENTAGE) {
            ErrorHandling.printError(
                  "ERROR: For loop variable type mismatch: expected PERCENTAGE for IMAGE collection, found " + varType);
            // System.err.println("For loop variable type mismatch: expected PERCENTAGE for
            // IMAGE collection, found " + varType);
            hasErrors = true;
            return false;
         }
      }

      String loopVar = ctx.ID(0).getText();
      symbolTable.put(loopVar,
            varType != Type.UNKNOWN ? varType : (collectionType == Type.IMAGE ? Type.PERCENTAGE : Type.UNKNOWN));
      scope++;
      boolean success = true;
      for (ImlParser.CommandContext cmd : ctx.command()) {
         success &= visit(cmd);
      }
      scope--;

      symbolTable.remove(loopVar);
      return success;
   }

   @Override
   public Boolean visitOutputImage(ImlParser.OutputImageContext ctx) {
      // outputStat: 'output' ID

      String varName = ctx.ID().getText();
      if (!symbolTable.containsKey(varName)) {
         ErrorHandling.printError("ERROR: Undefined variable: " + varName);
         // System.err.println("Undefined variable: " + varName);
         hasErrors = true;
         return false;
      }
      return true;
   }

   @Override
   public Boolean visitOutputString(ImlParser.OutputStringContext ctx) {
      return true;
   }

   @Override
   public Boolean visitOutputExpression(ImlParser.OutputExpressionContext ctx) {
      // outputStat: 'output' expr

      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: expression is null");
         hasErrors = true;
         return false;
      }

      typeStack.pop();
      return true;
   }

   @Override
   public Boolean visitListAppend(ImlParser.ListAppendContext ctx) {
      // listAppend: ID 'append' expr;

      String listName = ctx.ID().getText();
      if (!symbolTable.containsKey(listName)) {
         ErrorHandling.printError("ERROR: Undefined list: " + listName);
         // System.err.println("Undefined list: " + listName);
         hasErrors = true;
         return false;
      }
      if (symbolTable.get(listName) != Type.LIST) {
         ErrorHandling.printError("ERROR: Expected LIST type for " + listName + ", found " + symbolTable.get(listName));
         // System.err.println("Expected LIST type for " + listName + ", found " +
         // symbolTable.get(listName));
         hasErrors = true;
         return false;
      }

      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: expression is null");
         hasErrors = true;
         return false;
      }

      typeStack.pop();
      return true;
   }

   @Override
   public Boolean visitBinaryOp(ImlParser.BinaryOpContext ctx) {
      // expr: expr op=('+' | '-' | '*' | '/' | '%' | '!=' | '==' | '<' | '<=' | '>' |
      // '>=') expr
      if (!visit(ctx.expr(0))) {
         ErrorHandling.printError("ERROR: Left operand invalid");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating left operand");
         hasErrors = true;
         return false;
      }
      Type leftType = typeStack.pop();

      if (!visit(ctx.expr(1))) {
         ErrorHandling.printError("ERROR: Right operand invalid");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating right operand");
         hasErrors = true;
         return false;
      }
      Type rightType = typeStack.pop();
      String operator = ctx.op.getText();

      if (operator.equals("+")) {
         if (leftType == Type.STRING || rightType == Type.STRING) {
            typeStack.push(Type.STRING);
            return true;
         }
      }

      if ("+-*/%".contains(operator)) {// operacoes
         if (!leftType.isNumeric() || !rightType.isNumeric()) {
            ErrorHandling.printError("ERROR: Numeric operator " + operator + " requires numeric operands");
            hasErrors = true;
            return false;
         }
         typeStack.push(leftType);
      } else if ("==!=<><=>=".contains(operator)) {// comparacoes
         if (leftType != rightType) {
            ErrorHandling.printError("ERROR: Comparison requires compatible types");
            hasErrors = true;
            return false;
         }
         typeStack.push(Type.BOOLEAN);
      }

      return true;
   }

   // | 'run' 'from' expr # runFromReadExpr
   @Override
   public Boolean visitRunFromReadExpr(ImlParser.RunFromReadExprContext ctx) {
      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: expression is null");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating expression in run-from-read");
         hasErrors = true;
         return false;
      }

      Type exprType = typeStack.pop();
      if (exprType != Type.STRING) {
         ErrorHandling.printError("ERROR: Expected IMAGE type for run-from-read expression, found " + exprType);
         hasErrors = true;
         return false;
      }
      typeStack.push(Type.IMAGE);
      return true;
   }

   @Override
   public Boolean visitScaleBinaryOp(ImlParser.ScaleBinaryOpContext ctx) {
      // expr: expr op=('-*' | '|*' | '+*') expr

      if (!visit(ctx.expr(0))) {
         ErrorHandling.printError("ERROR: Left expression invalid in scale operation");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating left expression in scale operation");
         hasErrors = true;
         return false;
      }
      Type leftType = typeStack.pop();

      if (!visit(ctx.expr(1))) {
         ErrorHandling.printError("ERROR: Right expression invalid in scale operation");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating right expression in scale operation");
         hasErrors = true;
         return false;
      }
      Type rightType = typeStack.pop();

      if (leftType != Type.IMAGE || !rightType.isNumeric()) {
         ErrorHandling.printError("ERROR: Scale operation requires IMAGE and numeric types, found " +
               leftType + " and " + rightType);
         hasErrors = true;
         return false;
      }
      typeStack.push(Type.IMAGE);
      return true;
   }

   @Override
   public Boolean visitFlipImageExpr(ImlParser.FlipImageExprContext ctx) {
      // expr: op=('-' | '|' | '+') expr
      // '-' for horizontal flip, '|' for vertical flip, '+' for both
      String op = ctx.op.getText();

      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: Invalid expression in flip operation");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating expression in flip operation");
         hasErrors = true;
         return false;
      }

      Type exprType = typeStack.pop();

      if (exprType != Type.IMAGE) {
         ErrorHandling.printError("ERROR: Expected IMAGE type for flip operation, found " + exprType);
         hasErrors = true;
         return false;
      }

      if (op.equals("-") || op.equals("|") || op.equals("+")) {
         typeStack.push(Type.IMAGE);
         return true;
      } else {
         ErrorHandling.printError("ERROR: Unsupported flip operation: " + op);
         hasErrors = true;
         return false;
      }
   }

   @Override
   public Boolean visitPixelBinaryOpLp(ImlParser.PixelBinaryOpLpContext ctx) {
      // expr: expr op=('.+' | '.-' | '.>' | '.<') expr

      if (!visit(ctx.expr(0))) {
         ErrorHandling.printError("ERROR: Left expression invalid");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating left expression");
         hasErrors = true;
         return false;
      }
      Type leftType = typeStack.pop();

      if (!visit(ctx.expr(1))) {
         ErrorHandling.printError("ERROR: Right expression invalid");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError("ERROR: Type stack is empty after evaluating right expression");
         hasErrors = true;
         return false;
      }
      Type rightType = typeStack.pop();

      String op = ctx.op.getText();

      if (op.equals(".+") || op.equals(".-") || op.equals(".>") || op.equals(".<")) {
         if ((leftType == Type.IMAGE && (rightType == Type.IMAGE || rightType.isNumeric())) ||
               (rightType == Type.IMAGE && leftType.isNumeric())) {
            typeStack.push(Type.IMAGE);
            return true;
         }
      }

      ErrorHandling.printError("ERROR: Type mismatch in pixel operation: expected compatible types, found " +
            leftType + " and " + rightType + " with operator " + op);
      hasErrors = true;
      return false;
   }

   @Override
   public Boolean visitConvertExpr(ImlParser.ConvertExprContext ctx) {
      // expr: type=('string' | 'number') '(' expr ')'
      Type targetType = Type.fromString(ctx.type.getText());

      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: Invalid expression in conversion at line " + ctx.getStart().getLine());
         hasErrors = true;
         return false;
      }

      Type sourceType = typeStack.pop();

      if (targetType == Type.STRING) {
         typeStack.push(Type.STRING);
         return true;
      }

      switch (targetType) {
         case NUMBER:
            if (sourceType != Type.PERCENTAGE && sourceType != Type.STRING) {
               ErrorHandling.printError(
                     "ERROR: Can only convert PERCENTAGE or STRING to NUMBER at line " + ctx.getStart().getLine());
               hasErrors = true;
               return false;
            }
            break;
         case IMAGE:
            if (!sourceType.isNumeric()) {
               ErrorHandling.printError(
                     "ERROR: Can only convert NUMBER or PERCENTAGE to IMAGE at line " + ctx.getStart().getLine());
               hasErrors = true;
               return false;
            }
            break;
         case PERCENTAGE:
            if (sourceType != Type.NUMBER) {
               ErrorHandling
                     .printError("ERROR: Can only convert NUMBER to PERCENTAGE at line " + ctx.getStart().getLine());
               hasErrors = true;
               return false;
            }
            break;
         case LIST:
            ErrorHandling
                  .printError("ERROR: Explicit list conversions not supported at line " + ctx.getStart().getLine());
            hasErrors = true;
            return false;
         default:
            ErrorHandling.printError(
                  "ERROR: Unsupported conversion to " + targetType + " at line " + ctx.getStart().getLine());
            hasErrors = true;
            return false;
      }

      typeStack.push(targetType);
      return true;
   }

   @Override
   public Boolean visitListLiteral(ImlParser.ListLiteralContext ctx) {
      if (ctx.expr().size() > 0) {
         List<Type> elementTypes = new ArrayList<>();

         if (!visit(ctx.expr(0))) {
            return false;
         }

         if (typeStack.isEmpty()) {
            ErrorHandling.printError("ERROR: Type stack is empty after evaluating first element of list");
            hasErrors = true;
            return false;
         }

         Type firstElementType = typeStack.pop();
         elementTypes.add(firstElementType);
         boolean hasTypeMismatch = false;

         for (int i = 1; i < ctx.expr().size(); i++) {
            if (!visit(ctx.expr(i))) {
               continue;
            }

            if (typeStack.isEmpty()) {
               ErrorHandling.printError("ERROR: Type stack is empty after evaluating element " + i + " of list");
               hasErrors = true;
               continue;
            }

            Type elementType = typeStack.pop();
            elementTypes.add(elementType);

            if (elementType != firstElementType) {
               ErrorHandling.printError(
                     "ERROR: Type mismatch at element " + i + " in list: expected " + firstElementType +
                           ", found " + elementType + " (all elements must be of the same type)");
               hasErrors = true;
               hasTypeMismatch = true;
            }
         }

         if (hasTypeMismatch) {
            ErrorHandling.printError("ERROR: Cannot create list with mixed types");
            return false;
         }

         typeStack.push(Type.LIST);
      } else {
         typeStack.push(Type.LIST);
      }
      return true;
   }

   @Override
   public Boolean visitCountPixelExpr(ImlParser.CountPixelExprContext ctx) {
      // expr: 'count' 'pixel' expr 'in' expr
      if (!visit(ctx.expr(0))) {
         ErrorHandling.printError("ERROR: Invalid expression in count pixel at line " + ctx.getStart().getLine());
         hasErrors = true;
         return false;
      }
      Type condType = typeStack.pop();
      if (condType != Type.IMAGE && !condType.isNumeric()) {
         ErrorHandling.printError("ERROR: Expected IMAGE or numeric type for pixel condition, found " + condType);
         hasErrors = true;
         return false;
      }

      if (!visit(ctx.expr(1))) {
         ErrorHandling.printError("ERROR: Invalid expression in count pixel at line " + ctx.getStart().getLine());
         hasErrors = true;
         return false;
      }

      Type imageType = typeStack.pop();
      if (imageType != Type.IMAGE) {
         ErrorHandling.printError("ERROR: Expected IMAGE type for pixel collection, found " + imageType);
         hasErrors = true;
         return false;
      }

      typeStack.push(Type.NUMBER);
      return true;
   }

   @Override
   public Boolean visitParenExpr(ImlParser.ParenExprContext ctx) {
      if (!visit(ctx.expr())) {
         ErrorHandling.printError("ERROR: Invalid expression in parentheses at line " + ctx.getStart().getLine());
         hasErrors = true;
         return false;
      }
      return true;
   }

   @Override
   public Boolean visitAnyPixelExpr(ImlParser.AnyPixelExprContext ctx) {
      if (!visit(ctx.expr())) {
         return false;
      }
      Type exprType = typeStack.pop();
      if (exprType != Type.IMAGE) {
         ErrorHandling
               .printError("ERROR: Expected IMAGE type for pixel expression, found " + exprType);
         hasErrors = true;
         return false;
      }
      typeStack.push(Type.BOOLEAN);
      return true;
   }

   @Override
   public Boolean visitAllPixelExpr(ImlParser.AllPixelExprContext ctx) {
      if (!visit(ctx.expr())) {
         return false;
      }
      Type exprType = typeStack.pop();
      if (exprType != Type.IMAGE) {
         ErrorHandling
               .printError("ERROR: Expected IMAGE type for pixel expression, found " + exprType);
         hasErrors = true;
         return false;
      }
      typeStack.push(Type.BOOLEAN);
      return true;
   }

   @Override
   public Boolean visitVariableExpr(ImlParser.VariableExprContext ctx) {
      String varName = ctx.ID().getText();
      if (!symbolTable.containsKey(varName)) {
         ErrorHandling.printError("ERROR: Undefined variable: " + varName);
         hasErrors = true;
         return false;
      }

      Type varType = symbolTable.get(varName);
      typeStack.push(varType);
      return true;
   }

   @Override
   public Boolean visitLoadImageExpr(ImlParser.LoadImageExprContext ctx) {
      typeStack.push(Type.IMAGE);
      return true;
   }

   @Override
   public Boolean visitStringLiteral(ImlParser.StringLiteralContext ctx) {
      typeStack.push(Type.STRING);
      return true;
   }

   @Override
   public Boolean visitPixelBinaryOpHp(ImlParser.PixelBinaryOpHpContext ctx) {
      // Evaluate left expression
      if (!visit(ctx.expr(0))) {
         ErrorHandling.printError(ctx.start.getLine() + ": ERROR: Invalid left operand in pixel operation");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError(ctx.start.getLine() + ": ERROR: Type stack error after left operand");
         hasErrors = true;
         return false;
      }
      Type leftType = typeStack.pop();

      // Evaluate right expression
      if (!visit(ctx.expr(1))) {
         ErrorHandling.printError(ctx.start.getLine() + ": ERROR: Invalid right operand in pixel operation");
         hasErrors = true;
         return false;
      }

      if (typeStack.isEmpty()) {
         ErrorHandling.printError(ctx.start.getLine() + ": ERROR: Type stack error after right operand");
         hasErrors = true;
         return false;
      }
      Type rightType = typeStack.pop();

      String operator = ctx.getChild(1).getText();

      // Only allow IMAGE .* NUMBER operations
      if (operator.equals(".*")) {
         if ((leftType == Type.IMAGE && rightType.isNumeric()) ||
               (leftType.isNumeric() && rightType == Type.IMAGE)) {
            typeStack.push(Type.IMAGE);
            return true;
         }

         ErrorHandling.printError(ctx.start.getLine() +
               ": ERROR: Pixel operation '.*' requires IMAGE .* (NUMBER|PERCENTAGE), found " +
               leftType + " .* " + rightType);
         hasErrors = true;
         return false;
      }

      ErrorHandling.printError(ctx.start.getLine() +
            ": ERROR: Unsupported pixel operation '" + operator + "'");
      hasErrors = true;
      return false;
   }

   @Override
   public Boolean visitImageColumnsRowsExpr(ImlParser.ImageColumnsRowsExprContext ctx) {
      String imageVar = ctx.ID().getText();
      if (!symbolTable.containsKey(imageVar)) {
         ErrorHandling.printError(
               "ERROR: Undefined image variable '" + imageVar + "' at line " + ctx.getStart().getLine());
         hasErrors = true;
         return false;
      }

      Type varType = symbolTable.get(imageVar);
      if (varType != Type.IMAGE) {
         ErrorHandling.printError(
               "ERROR: Expected IMAGE type for variable '" + imageVar + "', found " + varType + " at line "
                     + ctx.getStart().getLine());
         hasErrors = true;
         return false;
      }

      typeStack.push(Type.NUMBER);
      return true;
   }

   @Override
   public Boolean visitMorphExpression(ImlParser.MorphExpressionContext ctx) {
      if (!visit(ctx.expr())) {
         return false;
      }
      Type exprType = typeStack.pop();
      if (exprType != Type.IMAGE) {
         ErrorHandling.printError("ERROR: Expected IMAGE type for morph expression, found " + exprType);
         hasErrors = true;
         return false;
      }

      String element = ctx.ID().getText();
      if (!symbolTable.containsKey(element)) {
         ErrorHandling.printError("ERROR: Undefined variable: " + element);
         hasErrors = true;
         return false;
      }

      Type elementType = symbolTable.get(element);
      if (elementType != Type.IMAGE && elementType != Type.LIST) {
         ErrorHandling
               .printError("ERROR: Expected IMAGE or LIST type for variable '" + element + "', found " + elementType);
         hasErrors = true;
         return false;
      }

      typeStack.push(Type.IMAGE);
      return true;
   }

   @Override
   public Boolean visitPercentageLiteral(ImlParser.PercentageLiteralContext ctx) {
      typeStack.push(Type.PERCENTAGE);
      return true;
   }

   @Override
   public Boolean visitNumberLiteral(ImlParser.NumberLiteralContext ctx) {
      typeStack.push(Type.NUMBER);
      return true;
   }

   @Override
   public Boolean visitTypes(ImlParser.TypesContext ctx) {
      // No validation needed for types
      return true;
   }

   @Override
   public Boolean visitReadInput(ImlParser.ReadInputContext ctx) {
      // expr: 'read' STRING
      String inputString = ctx.STRING().getText();
      if (inputString == null || inputString.isEmpty()) {
         ErrorHandling.printError("ERROR: Read input cannot be empty");
         hasErrors = true;
         return false;
      }
      typeStack.push(Type.STRING);
      return true;
   }
}