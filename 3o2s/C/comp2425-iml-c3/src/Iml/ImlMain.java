import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import org.stringtemplate.v4.*; 

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class ImlMain {
   public static void main(String[] args) {
      try {
         // create a CharStream that reads from standard input:
         CharStream input = CharStreams.fromStream(System.in);
         // create a lexer that feeds off of input CharStream:
         ImlLexer lexer = new ImlLexer(input);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         ImlParser parser = new ImlParser(tokens);
         // replace error listener:
         //parser.removeErrorListeners(); // remove ConsoleErrorListener
         //parser.addErrorListener(new ErrorHandlingListener());
         // begin parsing at program rule:
         ParseTree tree = parser.program();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));

            // Semantica
            ImlSemanticAnalyzer visitor0 = new ImlSemanticAnalyzer();
            visitor0.visit(tree);
            if (visitor0.hasErrors()) {
               System.err.println("Semantic errors found in the input program.");
               System.exit(1);
            }
            
            // Gera o programa em Python
            ImlExecute visitor1 = new ImlExecute();
            ST program = visitor1.visit(tree);

            // Salvar o programa gerado em um arquivo output.py
            try (PrintWriter out = new PrintWriter(new FileWriter("../output.py"))) {
               out.println(program.render());
               System.err.println("Program compiled successfully. Output written to output.py");
            } catch (IOException e) {
               System.out.println("Error writing to file: " + e.getMessage());
            }
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
