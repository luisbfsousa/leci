import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("CheckReturnValue")
public class Visitor extends VectorBaseVisitor<String> {
   private Map<String, String> variables = new HashMap<>();

   @Override
   public String visitMain(VectorParser.MainContext ctx) {
      for (VectorParser.StatContext stat : ctx.stat()) {
         visit(stat);
      }
      return null;
   }

   @Override
   public String visitStatDec(VectorParser.StatDecContext ctx) {
      return visit(ctx.dec());
   }

   @Override
   public String visitStatShow(VectorParser.StatShowContext ctx) {
      return visit(ctx.show());
   }

   @Override
   public String visitDec(VectorParser.DecContext ctx) {
      String value = visit(ctx.expr());
      String varName = ctx.VAR().getText();
      variables.put(varName, value);
      return value;
   }

   @Override
   public String visitShow(VectorParser.ShowContext ctx) {
      String value = visit(ctx.expr());
      System.out.println(value);
      return null;
   }

   @Override
   public String visitExprVetor(VectorParser.ExprVetorContext ctx) {
      String vectorText = ctx.VECTOR().getText();
      String content = vectorText.substring(1, vectorText.length() - 1);
      String[] nums = content.split(",");
      StringBuilder sb = new StringBuilder();
      sb.append("[");
      for (int i = 0; i < nums.length; i++) {
         double value = Double.parseDouble(nums[i]);
         sb.append(String.format("%.1f", value));
         if (i < nums.length - 1) sb.append(" ,");
      }
      sb.append("]");
      return sb.toString();
   }

   @Override
   public String visitExprVar(VectorParser.ExprVarContext ctx) {
      String varName = ctx.VAR().getText();
      if (!variables.containsKey(varName)) {
         throw new RuntimeException("Variável não definida: " + varName);
      }
      return variables.get(varName);
   }

   @Override
   public String visitExprNum(VectorParser.ExprNumContext ctx) {
      double value = Double.parseDouble(ctx.NUM().getText());
      return String.format("%.1f", value);
   }

   @Override
   public String visitExprParent(VectorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public String visitExprUnary(VectorParser.ExprUnaryContext ctx) {
      String op = ctx.op.getText();
      String expr = visit(ctx.expr());
      if (expr.startsWith("[")) {
         // Vector unary operation
         String content = expr.substring(1, expr.length() - 1);
         String[] nums = content.split(",");
         StringBuilder sb = new StringBuilder("[");
         for (int i = 0; i < nums.length; i++) {
            double value = Double.parseDouble(nums[i]);
            if (op.equals("-")) value = -value;
            sb.append(String.format("%.1f", value));
            if (i < nums.length - 1) sb.append(" ,");
         }
         sb.append("]");
         return sb.toString();
      } else {
         // Number unary operation
         double value = Double.parseDouble(expr);
         if (op.equals("-")) value = -value;
         return String.format("%.1f", value);
      }
   }

   @Override
   public String visitExprSumSub(VectorParser.ExprSumSubContext ctx) {
      String left = visit(ctx.expr(0));
      String right = visit(ctx.expr(1));
      String op = ctx.op.getText();

      if (left.startsWith("[") && right.startsWith("[")) {
         String leftContent = left.substring(1, left.length() - 1);
         String rightContent = right.substring(1, right.length() - 1);
         String[] leftNums = leftContent.split(",");
         String[] rightNums = rightContent.split(",");
         if (leftNums.length != rightNums.length) {
            throw new RuntimeException("Need same lenght");}
         StringBuilder sb = new StringBuilder("[");
         for (int i = 0; i < leftNums.length; i++) {
            double l = Double.parseDouble(leftNums[i]);
            double r = Double.parseDouble(rightNums[i]);
            double result = op.equals("+") ? l + r : l - r;
            sb.append(String.format("%.1f", result));
            if (i < leftNums.length - 1) sb.append(" ,"); }
         sb.append("]");
         return sb.toString();
      } else if (!left.startsWith("[") && !right.startsWith("[")) {
         double l = Double.parseDouble(left);
         double r = Double.parseDouble(right);
         double result = op.equals("+") ? l + r : l - r;
         return String.format("%.1f", result);
      } else {
         throw new RuntimeException("Cant mix numbers and vector");
      }
   }

   @Override
   public String visitExprMultDiv(VectorParser.ExprMultDivContext ctx) {
      String left = visit(ctx.expr(0));
      String right = visit(ctx.expr(1));
      if (left.startsWith("[") && right.startsWith("[")) {
         throw new RuntimeException("Vector multiplication not implemented (use dot product instead)");
      } else if (left.startsWith("[") || right.startsWith("[")) {
         // Scalar-vector multiplication
         boolean isLeftVector = left.startsWith("[");
         String vector = isLeftVector ? left : right;
         String scalar = isLeftVector ? right : left;
         double scalarValue = Double.parseDouble(scalar);
         String content = vector.substring(1, vector.length() - 1);
         String[] nums = content.split(",");
         StringBuilder sb = new StringBuilder("[");
         for (int i = 0; i < nums.length; i++) {
            double value = Double.parseDouble(nums[i]);
            value *= scalarValue;
            sb.append(String.format("%.1f", value));
            if (i < nums.length - 1) sb.append(" ,");
         }
         sb.append("]");
         return sb.toString();
      } else {
         // Number multiplication
         double l = Double.parseDouble(left);
         double r = Double.parseDouble(right);
         return String.format("%.1f", l * r);
      }
   }

   @Override
   public String visitExprProd(VectorParser.ExprProdContext ctx) {
      String left = visit(ctx.expr(0));
      String right = visit(ctx.expr(1));
      if (!left.startsWith("[") || !right.startsWith("[")) {
         throw new RuntimeException("Dot product requires two vectors"); }
      String leftContent = left.substring(1, left.length() - 1);
      String rightContent = right.substring(1, right.length() - 1);
      String[] leftNums = leftContent.split(",");
      String[] rightNums = rightContent.split(",");
      if (leftNums.length != rightNums.length) {
         throw new RuntimeException("Vectors must have same lenght"); }
      double result = 0.0;
      for (int i = 0; i < leftNums.length; i++) {
         double l = Double.parseDouble(leftNums[i]);
         double r = Double.parseDouble(rightNums[i]);
         result += l * r; }
      return String.format("%.1f", result);
   }
}