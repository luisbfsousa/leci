package aula12.ex3;

public class movie extends ex3 implements Comparable<movie>{

    private String name;
    private Double score;
    private String rating;
    private String genre;
    private Double runningtime;

    public movie(String name, Double score, String rating, String genre, Double runningtime) {
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.runningtime = runningtime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public String getRating() {
        return rating;
    }

    public String setRating(String rating) {
        return this.rating = rating;
    }

    public String getGenre() {
        return genre;
    }

    public String setGenre(String genre) {
        return this.genre = genre;
    }

    public Double getRunningtime() {
        return runningtime;
    }

    public Double getRunningtime(Double runningtime) {
        return this.runningtime = runningtime;
    }
    
    @Override
    public String toString() {
        return "Filme{ nome="+this.name+"; score="+this.score+"; rating="+this.rating+"; genre="+this.genre+"; running time=" + this.runningtime+" }"; 
    }

    @Override
    public int compareTo(movie o) {
        return this.getName().toLowerCase().compareTo(o.getName().toLowerCase());
    }
}
