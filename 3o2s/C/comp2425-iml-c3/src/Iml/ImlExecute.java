import org.stringtemplate.v4.*;

import java.io.IOException;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

@SuppressWarnings("CheckReturnValue")
public class ImlExecute extends ImlBaseVisitor<ST> {

   private STGroup templates = new STGroupFile("Iml.stg");

   @Override public ST visitProgram(ImlParser.ProgramContext ctx) {
      ST res = templates.getInstanceOf("fileTemplate");
      StringBuilder content = new StringBuilder();

      for (ImlParser.CommandContext commandCtx : ctx.command()) {
            ST commandTemplate = visit(commandCtx);
            if (commandTemplate != null) {
               content.append(commandTemplate.render());
               content.append("\n");
            }
      }

      res.add("content", content.toString());
      return res;
   }

   @Override public ST visitCommand(ImlParser.CommandContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitPlotImage(ImlParser.PlotImageContext ctx) {
      ST template = templates.getInstanceOf("plotImageTemplate");
      template.add("var_name", ctx.ID().getText());
      return template;
   }

   @Override public ST visitStoreImage(ImlParser.StoreImageContext ctx) {
      ST template = templates.getInstanceOf("storeImageTemplate");
      template.add("var_name", ctx.ID().getText());
      template.add("image_path", ctx.STRING().getText());
      return template;
   }

   @Override public ST visitAssignStat(ImlParser.AssignStatContext ctx) {
      ST template = templates.getInstanceOf("assignStatTemplate");
      ST exprTemplate = visit(ctx.expr());
      
      template.add("var_name", ctx.ID().getText());
      template.add("expr", exprTemplate.render());
      
      return template;
   }

   // 'if' expr 'then' thenCommands=command* ('else' elseCommands=command*)? 'done'               # ifStat
   @Override public ST visitIfStat(ImlParser.IfStatContext ctx) {
      ST template = templates.getInstanceOf("ifStatTemplate");
      
      // Processa a condição (expr)
      ST condition = visit(ctx.expr());
      template.add("condition", condition.render());
      
      // Processa o bloco 'then' (command*)
      List<ST> thenCommandsList = new ArrayList<>();
      for (ImlParser.CommandContext commandCtx : ctx.thenCommands) {
         ST commandTemplate = visit(commandCtx);
         if (commandTemplate != null) {
            thenCommandsList.add(commandTemplate);
         }
      }      
      template.add("then_block", thenCommandsList);
      
      // Processa o bloco 'else' (se existir)
      if (ctx.elseCommands != null) {
         List<ST> elseCommandsList = new ArrayList<>();
         for (ImlParser.CommandContext commandCtx : ctx.elseCommands) {
            ST commandTemplate = visit(commandCtx);
            if (commandTemplate != null) {
               elseCommandsList.add(commandTemplate);
            }
         }
         template.add("else_block", elseCommandsList);
      } else {
         template.add("else_block", null); // Sem bloco 'else'
      }
      
      return template;
   }

   @Override public ST visitUntilStat(ImlParser.UntilStatContext ctx) {
      ST template = templates.getInstanceOf("untilStatTemplate");
      
      // Processa a condição (expr)
      ST condition = visit(ctx.expr());
      template.add("condition", condition.render());
      
      // Processa o bloco de comandos (command*)
      List<ST> commandsList = new ArrayList<>();
      for (ImlParser.CommandContext commandCtx : ctx.command()) {
         ST commandTemplate = visit(commandCtx);
         if (commandTemplate != null) {
            commandsList.add(commandTemplate);
         }
      }
      template.add("commands", commandsList);
      
      return template;
   }

   @Override public ST visitForStat(ImlParser.ForStatContext ctx) {
      ST template = templates.getInstanceOf("forStatTemplate");
      
      // Nome da variável de iteração
      template.add("var_name", ctx.ID(0).getText());
      
      // Nome da variável de coleção
      template.add("collection_var", ctx.ID(1).getText());
      
      // Processa o bloco de comandos (command*)
      List<ST> commandsList = new ArrayList<>();
      for (ImlParser.CommandContext commandCtx : ctx.command()) {
         ST commandTemplate = visit(commandCtx);
         if (commandTemplate != null) {
            commandsList.add(commandTemplate);
         }
      }
      template.add("commands", commandsList);
      
      return template;
   }

   @Override public ST visitOutputImage(ImlParser.OutputImageContext ctx) {
      ST template = templates.getInstanceOf("outputImageTemplate");
      template.add("var_name", ctx.ID().getText());
      return template;
   }

   @Override public ST visitOutputString(ImlParser.OutputStringContext ctx) {
      ST template = templates.getInstanceOf("outputStringTemplate");
      template.add("text", ctx.STRING().getText());
      return template;
   }

   @Override public ST visitOutputExpression(ImlParser.OutputExpressionContext ctx) {
      ST exprTemplate = visit(ctx.expr());
      ST template = templates.getInstanceOf("outputExpressionTemplate");
      template.add("expr", exprTemplate.render());
      return template;
   }

   @Override public ST visitListAppend(ImlParser.ListAppendContext ctx) {
      ST template = templates.getInstanceOf("listAppendTemplate");
      String listName = ctx.ID().getText();
      ST exprTemplate = visit(ctx.expr());
      
      template.add("list_name", listName);
      template.add("expr", exprTemplate.render());
      
      return template;
   }

   @Override public ST visitBinaryOp(ImlParser.BinaryOpContext ctx) {
      ST left = visit(ctx.expr(0));
      ST right = visit(ctx.expr(1));
      String operator = ctx.op.getText();
      
      ST template = templates.getInstanceOf("binaryOpTemplate");
      template.add("left", left.render());
      template.add("op", operator);
      template.add("right", right.render());
      
      return template;
   }

   @Override public ST visitRunFromReadExpr(ImlParser.RunFromReadExprContext ctx) {
      ST template = templates.getInstanceOf("runFromReadExprTemplate");
      ST exprTemplate = visit(ctx.expr());
      template.add("expr", exprTemplate.render());

      return template;
   }

   //  | 'read' STRING                                                                               # readInput
   @Override public ST visitReadInput(ImlParser.ReadInputContext ctx) {
      ST template = templates.getInstanceOf("readInputTemplate");
      String string = ctx.STRING().getText();
      template.add("string", string);

      return template;
   }

   @Override public ST visitConvertExpr(ImlParser.ConvertExprContext ctx) {
      ST template = templates.getInstanceOf("convertExprTemplate");
      ST exprTemplate = visit(ctx.expr());
      String type = ctx.type.getText();

      type = switch (type) {
         case "string" -> "str";
         case "number" -> "float";
         default -> throw new IllegalArgumentException("Tipo desconhecido: " + type);
      };

      template.add("expr", exprTemplate.render());
      template.add("type", type);
      
      return template;
   }

   @Override public ST visitListLiteral(ImlParser.ListLiteralContext ctx) {
      ST template = templates.getInstanceOf("listLiteralTemplate");
      List<ST> elements = new ArrayList<>();

      for (ImlParser.ExprContext exprCtx : ctx.expr()) {
         ST exprTemplate = visit(exprCtx);
         elements.add(exprTemplate);
      }

      template.add("elements", elements);
      return template;
   }

   @Override public ST visitCountPixelExpr(ImlParser.CountPixelExprContext ctx) {
      ST template = templates.getInstanceOf("countPixelExprTemplate");
      ST pixelExpr = visit(ctx.expr(0));
      ST inExpr = visit(ctx.expr(1));

      template.add("pixel_expr", pixelExpr.render());
      template.add("in_expr", inExpr.render());
      
      return template;
   }

   @Override public ST visitFlipImageExpr(ImlParser.FlipImageExprContext ctx) {
      ST exprTemplate = visit(ctx.expr());
      String operator = ctx.op.getText();

      String templateName = switch (operator) {
         case "-" -> "flipImageExpr_horizontalFlipTemplate";
         case "|" -> "flipImageExpr_verticalFlipTemplate";
         case "+" -> "flipImageExpr_bothAxesFlipTemplate";
         default -> throw new IllegalArgumentException("Operador desconhecido: " + operator);
      };

      ST template = templates.getInstanceOf(templateName);
      template.add("expr", exprTemplate.render());
      
      return template;
   }

   @Override public ST visitParenExpr(ImlParser.ParenExprContext ctx) {
      ST template = templates.getInstanceOf("parenExprTemplate");
      ST innerExpr = visit(ctx.expr());
      template.add("expr", innerExpr.render());
      return template;
   }

   @Override public ST visitAnyPixelExpr(ImlParser.AnyPixelExprContext ctx) {
      ST template = templates.getInstanceOf("anyPixelExprTemplate");
      ST exprTemplate = visit(ctx.expr());
      template.add("expr", exprTemplate.render());
      return template;
   }

   @Override public ST visitAllPixelExpr(ImlParser.AllPixelExprContext ctx) {
      ST template = templates.getInstanceOf("allPixelExprTemplate");
      ST exprTemplate = visit(ctx.expr());
      template.add("expr", exprTemplate.render());
      return template;
   }

   @Override public ST visitVariableExpr(ImlParser.VariableExprContext ctx) {
      ST template = templates.getInstanceOf("variableExprTemplate");
      template.add("name", ctx.ID().getText());
      return template;
   }

   @Override public ST visitPixelBinaryOpHp(ImlParser.PixelBinaryOpHpContext ctx) {
      ST expr0 = visit(ctx.expr(0));
      ST expr1 = visit(ctx.expr(1));

      String templateName = "pixelBinaryOpHp_pixelMultiplyTemplate";

      ST template = templates.getInstanceOf(templateName);
      template.add("expr0", expr0.render());
      template.add("expr1", expr1.render());
      
      return template;
   }

   @Override public ST visitPixelBinaryOpLp(ImlParser.PixelBinaryOpLpContext ctx) {
      ST expr0 = visit(ctx.expr(0));
      ST expr1 = visit(ctx.expr(1));
      String operator = ctx.op.getText();

      String templateName = switch (operator) {
         case ".+" -> "pixelBinaryOpLp_pixelAddTemplate";
         case ".-" -> "pixelBinaryOpLp_pixelSubtractTemplate";
         case ".>" -> "pixelBinaryOpLp_pixelGreaterTemplate";
         case ".<" -> "pixelBinaryOpLp_pixelLessTemplate";
         default -> throw new IllegalArgumentException("Operador desconhecido: " + operator);
      };

      ST template = templates.getInstanceOf(templateName);
      template.add("expr0", expr0.render());
      template.add("expr1", expr1.render());
      
      return template;
   }

   @Override public ST visitScaleBinaryOp(ImlParser.ScaleBinaryOpContext ctx) {
      ST expr0 = visit(ctx.expr(0));
      ST expr1 = visit(ctx.expr(1));
      String operator = ctx.op.getText();

      String templateName = switch (operator) {
         case "-*" -> "scaleBinaryOpLp_horizontalScaleTemplate";
         case "|*" -> "scaleBinaryOpLp_verticalScaleTemplate";
         case "+*" -> "scaleBinaryOpLp_bothAxesScaleTemplate";
         default -> throw new IllegalArgumentException("Operador desconhecido: " + operator);
      };

      ST template = templates.getInstanceOf(templateName);
      template.add("expr0", expr0.render());
      template.add("expr1", expr1.render());
      
      return template;
   }

   @Override public ST visitLoadImageExpr(ImlParser.LoadImageExprContext ctx) {
      ST template = templates.getInstanceOf("loadImageExprTemplate");
      ST exprTemplate = visit(ctx.expr());
      template.add("expr", exprTemplate.render());

      return template;
   }

   @Override public ST visitImageColumnsRowsExpr(ImlParser.ImageColumnsRowsExprContext ctx) {
      ST template = templates.getInstanceOf("imageColumnsRowsExprTemplate");
      template.add("image_var", ctx.ID().getText());

      // Determina a dimensão baseada no scaletype
      int dimension = ctx.scaletype.getText().equals("columns") ? 1 : 0;
      template.add("dimension", dimension);

      return template;
   }

   @Override public ST visitStringLiteral(ImlParser.StringLiteralContext ctx) {
      ST template = templates.getInstanceOf("stringLiteralTemplate");
      template.add("text", ctx.STRING().getText());
      return template;
   }

   @Override public ST visitMorphExpression(ImlParser.MorphExpressionContext ctx) {
      ST exprTemplate = visit(ctx.expr());
      String operator = ctx.morphOp.getText();
      String varName = ctx.ID().getText();

      String templateName = switch (operator) {
         case "open" -> "morphExpression_OpenTemplate";
         case "close" -> "morphExpression_CloseTemplate";
         case "erode" -> "morphExpression_ErodeTemplate";
         case "dilate" -> "morphExpression_DilateTemplate";
         case "top hat" -> "morphExpression_TOP_HATTemplate";
         case "black hat" -> "morphExpression_BLACK_HATTemplate";
         default -> throw new IllegalArgumentException("Operador desconhecido: " + operator);
      };

      ST template = templates.getInstanceOf(templateName);

      template.add("expr", exprTemplate.render());
      template.add("var_name", varName);
      
      return template;
   }

   @Override public ST visitPercentageLiteral(ImlParser.PercentageLiteralContext ctx) {
      ST template = templates.getInstanceOf("percentageLiteralTemplate");
      // Remove o '%' e converte para valor decimal em percentagem
      String value = ctx.PERCENTAGE().getText().replace("%", "");
      value = String.valueOf(Double.parseDouble(value) / 100.0);
      template.add("value", value);
      return template;
   }

   @Override public ST visitNumberLiteral(ImlParser.NumberLiteralContext ctx) {
      ST template = templates.getInstanceOf("numberLiteralTemplate");
      template.add("value", ctx.NUMBER().getText());
      return template;
   }

   @Override public ST visitTypes(ImlParser.TypesContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }
}
