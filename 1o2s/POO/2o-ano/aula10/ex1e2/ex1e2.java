package aula10.ex1e2;

import java.util.Scanner;
import java.util.Map;
import java.util.List;
import java.util.ArrayList;
import java.util.LinkedHashMap;

public class ex1e2 {
    public static void main(String[] args) {
        int inputs;
        Scanner input = new Scanner(System.in);
        Map<String, List<Book>> genreLibrary = new LinkedHashMap<>();

        do{
            System.out.println("Operations:");
            System.out.println("1 - add genre");
            System.out.println("2 - remove genre");
            System.out.println("3 - show genres");
            System.out.println("4 - add book to genre");
            System.out.println("5 - show books from genre");
            System.out.println("0 - exit \n");

            System.out.print("Operation: ");
            inputs = input.nextInt();
            System.out.println();

            switch(inputs){
                case 1:
                    System.out.print("New Genre: ");
                    String newGenre = input.next();
                    genreLibrary.put(newGenre, new ArrayList<>());
                    System.out.println("Added \n");
                    break;

                case 2:
                    System.out.println("Remove Genre: ");
                    String genreToRemove = input.next();
                    if (genreLibrary.containsKey(genreToRemove)) {
                        genreLibrary.remove(genreToRemove);
                        System.out.println("Removed \n");
                    } else {
                        System.out.println("Genre not found \n");
                    }
                    break;

                case 3:
                    System.out.println("Genres available: ");
                    for (String genre : genreLibrary.keySet()) {
                        System.out.println(genre);
                    }
                    System.out.println();
                    break;

                    case 4:
                    System.out.print("Add book to genre: ");
                    String genreToAddBook = input.next();
                    System.out.println();
                    if (genreLibrary.containsKey(genreToAddBook)) {
                        System.out.print("Enter book title: ");
                        String bookTitle = input.next();
                        System.out.print("Enter book author: ");
                        String bookAuthor = input.next();
                        System.out.print("Enter book year: ");
                        int bookYear = input.nextInt();
                        Book book = new Book(bookTitle, bookAuthor, bookYear);
                        genreLibrary.get(genreToAddBook).add(book);
                        System.out.println("Book added");
                    } else {
                        System.out.println("Genre not found \n");
                    }
                    break;
                
                case 5:
                    System.out.print("Books in genres: \n");

                    String genreToShowBooks = input.next();
                    if (genreLibrary.containsKey(genreToShowBooks)) {
                        System.out.println("Books in genre " + genreToShowBooks + ":");
                        for (Book book : genreLibrary.get(genreToShowBooks)) {
                            System.out.println(book);
                        }
                    } else {
                        System.out.println("Genre not found \n");
                    }
                    break;

                case 0:
                    break;
            }

        }while (inputs!=0);

        input.close();

    }
}