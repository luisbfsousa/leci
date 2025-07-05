import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("CheckReturnValue")
public class Visitor extends TimeLangBaseVisitor<String> {
   private Map<String,String> variables = new HashMap<>();

   @Override public String visitMain(TimeLangParser.MainContext ctx) {
      for(TimeLangParser.StatContext stat:ctx.stat()){
         visit(stat);
      }
      return null;
   }

   @Override public String visitStatDec(TimeLangParser.StatDecContext ctx) {
      return visit(ctx.dec());
   }

   @Override public String visitStatWrite(TimeLangParser.StatWriteContext ctx) {
      String value = visit(ctx.write());
      System.out.println(value);
      return null;
   }

   @Override public String visitDec(TimeLangParser.DecContext ctx) {
      String varName = ctx.VAR().getText();
      String value = visit(ctx.expr());
      variables.put(varName,value);
      return value;
   }

   @Override public String visitWrite(TimeLangParser.WriteContext ctx) {
      //return visit(ctx.expr());
      if (ctx.expr().size() == 0) {
         return "";
      }
      StringBuilder result = new StringBuilder();
      for (int i = 0; i < ctx.expr().size(); i++) {
         if (i > 0) result.append(",");
         result.append(visit(ctx.expr(i)));
      }
      return result.toString();
   }

   @Override public String visitExprHour(TimeLangParser.ExprHourContext ctx) {
      //return ctx.HOUR().getText();
      String hourText = ctx.HOUR().getText();
      String[] parts = hourText.split("[hms]");
      int hours = Integer.parseInt(parts[0]);
      int minutes = Integer.parseInt(parts[1]);
      int seconds = Integer.parseInt(parts[2]);

      return String.format("%02dh%02dm%02ds", hours, minutes, seconds);
   }

   @Override public String visitExprVar(TimeLangParser.ExprVarContext ctx) {
      String varName = ctx.VAR().getText();
      if(!variables.containsKey(varName)){
         throw new RuntimeException("Variavel nao definida: "+varName);
      }
      return variables.get(varName);
   }
}
