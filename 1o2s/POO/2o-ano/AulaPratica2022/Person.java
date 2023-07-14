class Person {
    private String nome;
    private int numero;
    private DateYMD data;

    public Person(String nome, int numero, DateYMD data) {
        this.nome = nome;
        this.numero = numero;
        this.data = data;
    }

    public String getNome() {
        return nome;
    }

    public int getNumero() {
        return numero;
    }

    public DateYMD getData() {
        return data;
    }

    @Override
    public String toString() {
        return nome + " " + numero + " " + data;
    }
}