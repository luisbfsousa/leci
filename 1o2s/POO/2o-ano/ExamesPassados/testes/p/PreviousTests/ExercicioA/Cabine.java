package ExercicioA;

import java.util.Set;
import java.util.TreeSet;

public abstract class Cabine {
    
    private int numero, capMax;
    private Set<String> ocupantes = new TreeSet<>();

    public Cabine(int numero, int capMax) {
        this.numero = numero;
        this.capMax = capMax;
    }

    public Cabine(int numero, int capMax, String[] x) {
        this.numero = numero;
        this.capMax = capMax;
        setOcupante(x);
        
    }

    public void setOcupante(String[] x) {
        if (x.length > capMax) {
            throw new IllegalArgumentException();
        } else {
            for (String ocupante : x) {
                    ocupantes.add(ocupante);
            }
        }
    }

    public Set<String> getOcupante() {
		return ocupantes;
	}

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getCapMax() {
        return capMax;
    }

    public void setCapMax(int capMax) {
        this.capMax = capMax;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + capMax;
        result = prime * result + numero;
        result = prime * result + ((ocupantes == null) ? 0 : ocupantes.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Cabine other = (Cabine) obj;
        if (capMax != other.capMax)
            return false;
        if (numero != other.numero)
            return false;
        if (ocupantes == null) {
            if (other.ocupantes != null)
                return false;
        } else if (!ocupantes.equals(other.ocupantes))
            return false;
        return true;
    }

    @Override
    public String toString() {
        String a;
        if (ocupantes.size() == 0) {
            a = "Disponíbel para venda";
        } else {
            a = ocupantes.toString();
        }
        return "[ Nº" + numero + "( max " + capMax + " pessoas ) : " + a ;
    }
}