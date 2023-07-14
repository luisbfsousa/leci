package n114056;

public interface ILibrary {
    public void addItem(LibraryItem item);
    public void removeItem(LibraryItem item);
    public LibraryItem searchForItemById(int id);
    public LibraryItem searchForItemByName(String title);
    public boolean borrowItem(int itemId, String borrower);
    public boolean returnItem(int itemId);
    public void printInventory();
}
