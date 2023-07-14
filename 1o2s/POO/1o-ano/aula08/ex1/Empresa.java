package aula08.ex1;
import java.util.ArrayList;

public class Empresa {
    private String nome;
    private String código_postal;
    private String email;
    private ArrayList<Veiculo> veiculos;

    public Empresa(String nome, String código_postal, String email) {
        this.nome = nome;
        this.código_postal = código_postal;
        this.email = email;
        this.veiculos = new ArrayList<>();
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getCódigo_postal() {
        return código_postal;
    }
    public void setCódigo_postal(String código_postal) {
        this.código_postal = código_postal;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public ArrayList<Veiculo> getVeiculos() {
        return veiculos;
    }
    public void setVeiculos(ArrayList<Veiculo> veiculos) {
        this.veiculos = veiculos;
    }
    public void addVeiculo(Veiculo veiculo) {
        this.veiculos.add(veiculo);
    }
    public void addVeiculos(Veiculo... veiculos) {
        for (Veiculo veiculo : veiculos) {
            this.veiculos.add(veiculo);
        }
    }
    //por completar
    public void validarEmail(String email) {
        if (email.contains("@")) {
            System.out.println("Email válido");
        } else {
            System.out.println("Email inválido");
        }
    }
    @Override
    public String toString() {
        return "Empresa{" + "nome=" + nome + ", código_postal=" + código_postal + ", email=" + email + ", veiculos=" + veiculos + '}';
    }
  
    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        final Empresa other = (Empresa) obj;
        return this.getNome().equals(other.getNome()) &&
            this.getCódigo_postal().equals(other.getCódigo_postal()) &&
            this.getEmail().equals(other.getEmail()) &&
            this.getVeiculos().equals(other.getVeiculos());
    }

}


