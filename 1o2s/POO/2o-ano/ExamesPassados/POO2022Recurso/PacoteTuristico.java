import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class PacoteTuristico implements IPacoteTuristico{
    private String nome;
    private int noites;
    private double preco;
    private List<Servico> servicos;

    public PacoteTuristico(String nome, int noites, double preco) {
        this.nome = nome;
        this.noites = noites;
        this.preco = preco;
        this.servicos = new ArrayList<>();
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getNoites() {
        return this.noites;
    }

    public void setNoites(int noites) {
        this.noites = noites;
    }

    public double getPreco() {
        return this.preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    @Override
    public String toString() {
        return "{ nome: " + getNome() + ", noites: " + getNoites() + ", preco:" + getPreco() + "}";
    }

    @Override
    public PacoteTuristico adicionaServico(Servico servico) {
        if (servico instanceof Voo || servico instanceof Alojamento) {
            for (Servico s : servicos) {
                if (s.getClass().equals(servico.getClass())) {
                    return null; // Já existe um serviço do mesmo tipo
                }
            }
            servicos.add(servico);
        }
        throw new UnsupportedOperationException("Unimplemented method 'adicionaServico'");
    }

    @Override
    public Collection<String> listaServicos() {
        List<String> listaServicos = new ArrayList<>();
        for (Servico servico : servicos) {
            listaServicos.add(servico.toString());
        }
        return listaServicos;
    }

    @Override
    public int precoTotal(int numPessoas) {
        int total = (int) (preco * noites * numPessoas);
        if (numPessoas >= 4) {
            double desconto = total * 0.07;
            total -= desconto;
        }
        return total;
    }

}
