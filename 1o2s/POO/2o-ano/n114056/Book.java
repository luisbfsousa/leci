package n114056;

public class Book extends LibraryItem {
    private String author;
    
    public Book(String title, String author) {
        super(title);
        this.author = author;
    }
    
    public String getAuthor() {
        return this.author;
    }
    
    @Override
    public String toString() {
        return super.toString() + ", Author: " + this.author;
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        
        if (!(o instanceof Book)) {
            return false;
        }
        
        Book book = (Book) o;
        
        return super.equals(book) && book.getAuthor().equals(this.author);
    }
    
    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + this.author.hashCode();
        return result;
    }
}
