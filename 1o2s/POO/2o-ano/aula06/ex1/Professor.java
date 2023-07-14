package aula06.ex1;

public class Professor extends Pessoa{
    private String departamento;
    private float salario;

    public Professor(String name, int cc, Date dataNasc, String departamento, float salario) {
        super(name, cc, dataNasc);
        this.departamento = departamento;
        this.salario = salario;
    }

    public String getDepartamento() {
        return departamento;
    }
    
    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
    
    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }

    @Override
    public String toString() {
        return "Professor{" + "departamento=" + departamento + ", salario=" + salario + "}";
    }
    
}