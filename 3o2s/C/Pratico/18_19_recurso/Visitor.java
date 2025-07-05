import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("CheckReturnValue")
public class Visitor extends LangComplexBaseVisitor<String> {
   private Map<String,String> variables = new HashMap<>();

   @Override public String visitMain(LangComplexParser.MainContext ctx) {
      for(LangComplexParser.StatContext stat:ctx.stat()){
         visit(stat);
      }
      return null;
   }

   @Override public String visitStatDec(LangComplexParser.StatDecContext ctx) {
      return visit(ctx.dec());
   }

   @Override public String visitStatDisplay(LangComplexParser.StatDisplayContext ctx) {
      String value = visit(ctx.display());
      System.out.println(value);
      return null;
   }

   @Override public String visitDec(LangComplexParser.DecContext ctx) {
      String varName = ctx.VAR().getText();
      String value = visit(ctx.expr());
      variables.put(varName,value);
      return(value);
   }

   @Override public String visitDisplay(LangComplexParser.DisplayContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitExprVar(LangComplexParser.ExprVarContext ctx) {
      String varName = ctx.VAR().getText();
      if(!variables.containsKey(varName)){
         throw new RuntimeException("Erro na variavel: "+ varName);
      }
      return variables.get(varName);
   }

   @Override public String visitExprExpr(LangComplexParser.ExprExprContext ctx) {
      String left = visit(ctx.expr(0));
      String right = visit(ctx.expr(1));
      String op = ctx.op.getText();
      return left + op + right;
   }

   @Override public String visitExprIm(LangComplexParser.ExprImContext ctx) {
      return ctx.IM().getText();
   }

   @Override public String visitExprNum(LangComplexParser.ExprNumContext ctx) {
      return ctx.NUM().getText();
   }
}
