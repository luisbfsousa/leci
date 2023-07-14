package aula10.ex1e2;

public class Book {
    private String title;
    private String author;
    private int year;

    public Book(String title, String author, int year){
        this.title = title;
        this.author = author;
        this.year = year;
    }

    public String getTitle(){
        return title;
    }

    public void setTitle(){
        this.title = title;
    }

    public String getAuthor(){
        return author;
    }

    public void setAuthor(){
        this.author = author;
    }

    public int getYear(){
        return year;
    }

    public void setYear(){
        this.year = year;
    }

    @Override
        public String toString(){
            return title + ", " + author+ ", " + year + "\n";
        }
}