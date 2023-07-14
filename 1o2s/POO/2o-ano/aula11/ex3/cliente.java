package aula11.ex3;

import java.util.LinkedList;

public class cliente {
    private int ncliente;
    private LinkedList<Double> leitura;

    public cliente(int cliente, LinkedList<Double> leitura) {
        this.ncliente = ncliente;
        this.leitura = leitura;
    }

    public int getcliente() {
        return ncliente;
    }

    public void setcliente(int ncliente) {
        this.ncliente = ncliente;
    }

    public LinkedList<Double> getleitura() {
        return leitura;
    }

    public void setleitura(LinkedList<Double> leitura) {
        this.leitura = leitura;
    }
}
