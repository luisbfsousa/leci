package aula06.ex1;

public class Pessoa {
    private String name;
    private String categoria;
    private int cc;
    private Date dataNasc;

    public Pessoa(String name, int cc, Date dataNasc) {
        assert name != null;
        assert cc > 0 && cc < 99999999;
        assert dataNasc != null;
        assert categoria != null;
        this.name = name;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCc() {
        return cc;
    }

    public void setCc(int cc) {
        this.cc = cc;
    }

    public Date getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(Date dataNasc) {
        this.dataNasc = dataNasc;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    
    @Override
    public String toString() {
        return "Pessoa{" + "name=" + name + ", cc=" + cc + ", dataNasc=" + dataNasc + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        final Pessoa other = (Pessoa) obj;
        return this.cc == other.cc && this.name.equals(other.name) && this.dataNasc.equals(other.dataNasc);
    }
}
