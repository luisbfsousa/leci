import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Scanner;

/**
 * RandomBooks
 */
public class RandomBooks {

    private List<Livro> livros;
    private Map<Pessoa, List<Livro>> leitores;

    public RandomBooks() {
        this.leitores = new HashMap<>();
        this.livros = getBooks();
    }

    private List<Livro> getBooks() {
        List<Livro> books = new ArrayList<>();
        try (Scanner myReader = new Scanner(new File("books.csv"));) {
            while (myReader.hasNextLine()) {
                String[] info = myReader.nextLine().split(";");
                books.add(new Livro(info[1], info[0], Integer.parseInt(info[2])));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return books;
    }

    public void getRandomBook(Pessoa p) {
        Random rand = new Random();
        Livro randomElement = livros.get(rand.nextInt(livros.size()));
        List<Livro> temp = new ArrayList<>();
        temp.add(randomElement);
        if (leitores.putIfAbsent(p, temp) != null) {
            leitores.get(p).add(randomElement);
        }
    }

    public void listReaders() {
        StringBuilder stb = new StringBuilder();
        // iterar sobre todas as pessoas e respetiva lista de livros
        for (Map.Entry<Pessoa, List<Livro>> entry : leitores.entrySet()) {
            Pessoa key = entry.getKey();
            List<Livro> value = entry.getValue();
            Map<Livro, Integer> freq = new HashMap<>();
            // obter frequencia de leitura de cada livro
            for (Livro livro : value) {
                freq.put(livro, freq.getOrDefault(livro, 0) + 1);
            }
            stb.append("Leitor " + key.getNome() + " (" + key.getCc() + "):\n");
            
            for (Map.Entry<Livro, Integer> entri : freq.entrySet()) {
                Livro k = entri.getKey();
                Integer v = entri.getValue();
                stb.append(String.format("\t\t%s (%d vezes)\n", k, v));
            }
            // ...
        }
        writeResult(stb.toString());
        System.out.println(stb.toString());
    }

    private void writeResult(String input) {
        try (FileWriter myWriter = new FileWriter("output.txt");) {
            myWriter.write(input);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}