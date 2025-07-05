import java.util.HashMap;
import java.util.Map;


@SuppressWarnings("CheckReturnValue")
public class Visitor extends strLangBaseVisitor<String> {
   private Map<String,String> variables = new HashMap<>();

   @Override public String visitMain(strLangParser.MainContext ctx) {
      for(strLangParser.StatContext stat:ctx.stat()){
         visit(stat);
      }
      return null;
   }

   @Override public String visitStatDec(strLangParser.StatDecContext ctx) {
      return visit(ctx.dec());
   }

   @Override public String visitStatPrint(strLangParser.StatPrintContext ctx) {
      String value = visit(ctx.print());
      System.out.println(value);
      return null;
   }

   @Override public String visitDec(strLangParser.DecContext ctx) {
      String varName = ctx.VAR().getText();
      String value = ctx.STRING().getText();
      variables.put(varName,value);
      return value;
   }

   @Override public String visitPrint(strLangParser.PrintContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitExprString(strLangParser.ExprStringContext ctx) {
      return ctx.STRING().getText();
   }

   @Override public String visitExprVar(strLangParser.ExprVarContext ctx) {
      String varName = ctx.VAR().getText();
      if(!variables.containsKey(varName)){
         throw new RuntimeException(" Variavle nao definida : "+varName);
      }
      return variables.get(varName);
   }
}
