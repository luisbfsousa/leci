package n114056;
import java.util.Scanner;

public class LibraryMain {
    public static void main(String[] args) {
        ILibrary library = new Library();
        Scanner scanner = new Scanner(System.in);
        String choice = "";

        while (!choice.equals("7")) {
            System.out.println("Library Menu:");
            System.out.println("1. Add item");
            System.out.println("2. Remove item");
            System.out.println("3. Search for item");
            System.out.println("4. Borrow item");
            System.out.println("5. Return item");
            System.out.println("6. Print inventory");
            System.out.println("7. Exit");

            System.out.print("Enter choice: ");
            choice = scanner.nextLine();

            switch (choice) {
                case "1":
                    // adicionar um item
                    System.out.println("Enter item name: ");
                    String name = scanner.nextLine();
                    library.addItem(new LibraryItem(name));
                    break;
                case "2":
                    System.out.println("Enter item ID: ");
                    int id = Integer.parseInt(scanner.nextLine());
                    LibraryItem itemById = library.searchForItemById(id);
                    if (itemById != null)
                        library.removeItem(itemById);
                    else
                        System.out.println("Item not found.");
                    break;
                case "3":
                    System.out.println("Enter item name: ");
                    String searchName = scanner.nextLine();
                    LibraryItem itemByName = library.searchForItemByName(searchName);
                    if (itemByName != null)
                        System.out.println(itemByName);
                    else
                        System.out.println("Item not found.");
                    break;
                case "4":
                    System.out.println("Enter item ID: ");
                    int borrowId = Integer.parseInt(scanner.nextLine());
                    System.out.println("Enter borrower name: ");
                    String borrower = scanner.nextLine();
                    library.borrowItem(borrowId, borrower);
                    break;
                case "5":
                    System.out.println("Enter item ID: ");
                    int returnId = Integer.parseInt(scanner.nextLine());
                    library.returnItem(returnId);
                    break;
                case "6":
                    library.printInventory();
                    break;
                case "7":
                    System.out.println("Exiting program.");
                    break;
                default:
                    System.out.println("Invalid choice.");
                    break;
            }
        }
        scanner.close();
    }
}
