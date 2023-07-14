package aula08.ex1;

public class ex1 {

        public static void main(String[] args) {
    
            Empresa empresa = new Empresa("Empresa1", "1234-567", "abc@ua.pt");
    
            Motociclo motociclo1 = new Motociclo("12345", "Honda", "CBR", 125, "estrada");
            motociclo1.trajeto(20);
            Motociclo motociclo2 = new Motociclo("12346", "Honda", "CBR", 125, "estrada");
            motociclo2.trajeto(25);
            Motociclo motociclo3 = new Motociclo("12347", "Honda", "CBR", 125, "desportivo");
            motociclo3.trajeto(30);
    
            AutomovelLigeiro automovelLigeiro1 = new AutomovelLigeiro("12348", "Fiat", "Palio", 125, 12345, 5);
            automovelLigeiro1.trajeto(20);
            AutomovelLigeiro automovelLigeiro2 = new AutomovelLigeiro("12349", "Fiat", "Palio", 125, 12345, 5);
            automovelLigeiro2.trajeto(25);
    
            Taxi taxi1 = new Taxi("12350", "Fiat", "Palio", 125, 12345, 5, 123); 
            taxi1.trajeto(20);
            Taxi taxi2 = new Taxi("12351", "Fiat", "Palio", 125, 12345, 5, 123456789);
            taxi2.trajeto(25);
    
            PesadoMercadorias pesadoMercadorias1 = new PesadoMercadorias("12352", "Fiat", "Palio", 125, 12345, 5, 150);
            pesadoMercadorias1.trajeto(20);
            PesadoMercadorias pesadoMercadorias2 = new PesadoMercadorias("12353", "Fiat", "Palio", 125, 12345, 5, 150);
            pesadoMercadorias2.trajeto(25);
    
            PesadoPassageiros pesadoPassageiros1 = new PesadoPassageiros("12354", "Fiat", "Palio", 125, 12345, 5, 30);
            pesadoPassageiros1.trajeto(20);
            PesadoPassageiros pesadoPassageiros2 = new PesadoPassageiros("12355", "Fiat", "Palio", 125, 12345, 5, 30);
            pesadoPassageiros2.trajeto(25);
            
            empresa.addVeiculos(motociclo1, motociclo2, motociclo3);
            empresa.addVeiculos(automovelLigeiro1, automovelLigeiro2);
            empresa.addVeiculos(taxi1, taxi2);
            empresa.addVeiculos(pesadoMercadorias1, pesadoMercadorias2);
            empresa.addVeiculos(pesadoPassageiros1, pesadoPassageiros2);
    
            System.out.println(empresa.toString());
    
            System.out.println("\n\n");
    
            for ( Veiculo veiculo : empresa.getVeiculos() ) {
                System.out.println(veiculo.toString());
            }
    
            System.out.println("\n\n");
    
            Veiculo veiculoComMaiorDistancia = null;
            for ( Veiculo veiculo : empresa.getVeiculos() ) {
                if (veiculoComMaiorDistancia == null) {
                    veiculoComMaiorDistancia = veiculo;
                } else if (veiculo.distanciaTotal() > veiculoComMaiorDistancia.distanciaTotal()) {
                    veiculoComMaiorDistancia = veiculo;
                }
            }
    
            System.out.println(veiculoComMaiorDistancia.toString());
    
            
        }
        
    }
    
