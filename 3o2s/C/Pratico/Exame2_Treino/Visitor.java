import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("CheckReturnValue")
public class Visitor extends FracLangBaseVisitor<String> {
   private Map<String,String> variables = new HashMap<>();

   @Override public String visitMain(FracLangParser.MainContext ctx) {
      for(FracLangParser.StatContext stat: ctx.stat()){
         visit(stat);
      }
      return null;
   }

   @Override public String visitStatDec(FracLangParser.StatDecContext ctx) {
      return visit(ctx.dec());
   }

   @Override public String visitStatDisplay(FracLangParser.StatDisplayContext ctx) {
      String value = visit(ctx.display());
      System.out.println(value);
      return null;
   }

   @Override public String visitDec(FracLangParser.DecContext ctx) {
      String varName = ctx.VAR().getText();
      String value = visit(ctx.expr());
      variables.put(varName,value);
      return value;
   }

   @Override public String visitDisplay(FracLangParser.DisplayContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitExprFraction(FracLangParser.ExprFractionContext ctx) {
      //String left = visit(ctx.expr(0));
      //String right = visit(ctx.expr(1));
      //return left + "/" + right;
      return ctx.FRACTION().getText();
   }

   @Override public String visitExprNum(FracLangParser.ExprNumContext ctx) {
      return ctx.NUM().getText();
   }

   @Override public String visitExprVar(FracLangParser.ExprVarContext ctx) {
      String varName = ctx.VAR().getText();
      if(!variables.containsKey(varName)){
         throw new RuntimeException("Variavel nao declarada: " + varName);
      }
      return variables.get(varName);
   }
}
