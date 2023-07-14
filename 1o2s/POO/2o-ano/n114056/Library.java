package n114056;

import java.util.ArrayList;
import java.util.List;

public class Library implements ILibrary {
    private List<LibraryItem> items;
    
    public Library() {
        this.items = new ArrayList<>();
    }
    
    public void addItem(LibraryItem item) {
        this.items.add(item);
    }
    
    public void removeItem(LibraryItem item) {
        this.items.remove(item);
    }

    public LibraryItem searchForItemById(int id) {
        for (LibraryItem item : this.items)
            if (item.getId() == id)
                return item;
        return null;
    }
    
    public LibraryItem searchForItemByName(String title) {
        for (LibraryItem item : this.items)
            if (item.getTitle().equals(title))
                return item;
        return null;
    }
    
    public boolean borrowItem(int itemId, String userName) {
        for (LibraryItem item : this.items) {
            if (item.getId() == itemId && item.isAvailable()) {
                item.checkout(userName);
                return true;
            }
        }
        return false;
    }
    
    public boolean returnItem(int itemId) {
        for (LibraryItem item : this.items) {
            if (item.getId() == itemId && !item.isAvailable()) {
                item.returnItem();
                return true;
            }
        }
        return false;
    }
    
    public void printInventory() {
        for (LibraryItem item : this.items) {
            System.out.println(item);
        }
    }
}