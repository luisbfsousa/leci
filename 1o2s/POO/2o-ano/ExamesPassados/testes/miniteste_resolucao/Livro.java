public class Livro {
    private String autor;
    private String titulo;
    private int data;

    public Livro(String autor, String titulo, int data) {
        this.autor = autor;
        this.titulo = titulo;
        this.data = data;
    }

    public String getAutor() {
        return this.autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getTitulo() {
        return this.titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getData() {
        return this.data;
    }

    public void setData(int data) {
        this.data = data;
    }

    public Livro autor(String autor) {
        setAutor(autor);
        return this;
    }

    public Livro titulo(String titulo) {
        setTitulo(titulo);
        return this;
    }

    public Livro data(int data) {
        setData(data);
        return this;
    }

    @Override
    public String toString() {
        return String.format("%s, by %s (%d)", titulo, autor, data);
    }

}
