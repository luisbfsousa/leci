package aula07.ex3;

import java.util.ArrayList;

public class Agencia {

    private ArrayList<Alojamento> alojamentos = new ArrayList<Alojamento>();
    private ArrayList<Carros> viaturas = new ArrayList<Carros>();
    private String name;
    private String address;

    public Agencia(String name, String address) {
        this.name = name;
        this.address = address;
    }

    public void addAlojamento(Alojamento alojamento) {
        alojamentos.add(alojamento);
    }

    public void addViatura(Carros viatura) {
        viaturas.add(viatura);
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public ArrayList<Alojamento> getAlojamentos() {
        return alojamentos;
    }

    public ArrayList<Carros> getViaturas() {
        return viaturas;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Agencia{" + "name=" + name + ", address=" + address + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        final Agencia other = (Agencia) obj;
        return this.getName() == other.getName()
            && this.getAddress() == other.getAddress()
            && this.getAlojamentos() == other.getAlojamentos()
            && this.getViaturas() == other.getViaturas();
    }
    
}