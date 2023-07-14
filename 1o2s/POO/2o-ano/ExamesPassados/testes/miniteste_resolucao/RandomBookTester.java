import java.util.ArrayList;
import java.util.List;

public class RandomBookTester {
    public static void main(String[] args) {

        RandomBooks bookStore = new RandomBooks();

        List<Pessoa> r = new ArrayList<Pessoa>();        
        r.add(new Pessoa("Joao", 1231245, new Date(1, 1, 2000)));
        r.add(new Pessoa("Carlos", 23424, new Date(1, 10, 2003)));
        r.add(new Pessoa("Marta", 3423, new Date(31, 3, 2002)));
        r.add(new Pessoa("Ricardo", 786675, new Date(14, 7, 2000)));
        r.add(new Pessoa("Paula", 65423, new Date(3, 6, 2001)));

        // selecionar aleatoriamente um leitor, que receberá um livro aleatório
        // os livros disponíveis estão listatos no ficheiro 'books.csv', no formato 'titulo;autor;ano'
        for (int i=0; i<30; i++) {
            int ri = (int) (Math.random()*r.size());
            bookStore.getRandomBook(r.get(ri));
        }

        bookStore.listReaders();
    }
}
