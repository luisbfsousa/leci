package aula06.ex2;

public class Conjunto {
    private int[] vector = new int[0];
    
    public void insert(int n) {
        if (!this.contains(n)) {
            int[] aux = new int[this.size() + 1];
            for (int i = 0; i < this.size(); i++) {
                aux[i] = this.vector[i];
            }
            aux[aux.length - 1] = n;
            this.vector = aux;
        }
    }

    public boolean contains(int n) {
        for (int i = 0; i < this.size(); i++) {
            if (this.vector[i] == n) {
                return true;
            }
        }
        return false;
    }

    public void remove(int n) {
        if (this.contains(n)) {
            int[] aux = new int[this.size() - 1];
            int j = 0;
            for (int i = 0; i < this.size(); i++) {
                if (this.vector[i] != n) {
                    aux[j] = this.vector[i];
                    j++;
                }
            }
            this.vector = aux;
        }
    }

    public void empty() {
        this.vector = new int[0];
    }

    public int size() {
        return this.vector.length;
    }

    @Override
    public String toString() {
        String s = "";
        for (int i = 0; i < this.size(); i++) {
            s += this.vector[i] + " ";
        }
        return s;
    }

    public Conjunto combine(Conjunto c) {
        Conjunto result = new Conjunto();
        for (int i = 0; i < this.size(); i++) {
            result.insert(this.vector[i]);
        }
        for (int i = 0; i < c.size(); i++) {
            result.insert(c.vector[i]);
        }
        return result;
    }

    public Conjunto subtract(Conjunto diff) {
        Conjunto result = new Conjunto();
        for (int i = 0; i < this.size(); i++) {
            if (!diff.contains(this.vector[i]))
                result.insert(this.vector[i]);
        }
        return result;
    }

    public Conjunto intersect(Conjunto inter) {
        Conjunto result = new Conjunto();
        for (int i = 0; i < this.size(); i++) {
            if (inter.contains(this.vector[i]))
                result.insert(this.vector[i]);
        }
        return result;
    }
    
}
