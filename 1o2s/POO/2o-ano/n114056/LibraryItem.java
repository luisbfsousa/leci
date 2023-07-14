package n114056;

public class LibraryItem {
    private int id;
    private String title;
    private boolean available;
    private String userName;

    public static int currentId = 1;
    
    public LibraryItem(String title) {
        this.id = LibraryItem.currentId++;
        this.title = title;
        this.available = true;
        this.userName = null;
    }
    
    public int getId() {
        return this.id;
    }
    
    public String getTitle() {
        return this.title;
    }
    
    public boolean isAvailable() {
        return this.available;
    }
    
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public void checkout(String userName) {
        this.available = false;
        this.userName = userName;
    }
    
    public void returnItem() {
        this.available = true;
        this.userName = null;
    }
    
    @Override
    public String toString() {
        return "ID: " + this.id + ", Title: " + this.title + ", Available: " + this.available + ", User Name: " + this.userName;
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        
        if (!(o instanceof LibraryItem)) {
            return false;
        }
        
        LibraryItem item = (LibraryItem) o;
        
        return item.getId() == this.id && item.getTitle().equals(this.title);
    }
    
    @Override
    public int hashCode() {
        int result = 17;
        result = 31 * result + this.id;
        result = 31 * result + this.title.hashCode();
        return result;
    }
}
