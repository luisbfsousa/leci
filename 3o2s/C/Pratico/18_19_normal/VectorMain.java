import java.io.IOException;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.File;

public class VectorMain {
   public static void main(String[] args) {
      for(String filename: args){
         try {
            // create a CharStream that reads from standard input:
            CharStream input = CharStreams.fromFileName(filename);
            // create a lexer that feeds off of input CharStream:
            VectorLexer lexer = new VectorLexer(input);
            // create a buffer of tokens pulled from the lexer:
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            // create a parser that feeds off the tokens buffer:
            VectorParser parser = new VectorParser(tokens);
            // replace error listener:
            //parser.removeErrorListeners(); // remove ConsoleErrorListener
            //parser.addErrorListener(new ErrorHandlingListener());
            // begin parsing at main rule:
            ParseTree tree = parser.main();
            if (parser.getNumberOfSyntaxErrors() == 0) {
               // print LISP-style tree:
               // System.out.println(tree.toStringTree(parser));
               Visitor visitor0 = new Visitor();
               visitor0.visit(tree);
            }
         }
         catch(IOException e) {
            e.printStackTrace();
            System.exit(1);
         }
         catch(RecognitionException e) {
            e.printStackTrace();
            System.exit(1);
         }

      }
   }
}
