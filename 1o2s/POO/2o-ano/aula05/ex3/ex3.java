package aula05.ex3;

public class ex3 {
    public static void main(String[] args) {
        RealEstate imobiliaria = new RealEstate();
        imobiliaria.newProperty("Glória", 2, 30000);
        imobiliaria.newProperty("Vera Cruz", 1, 25000);
        imobiliaria.newProperty("Santa Joana", 3, 32000);
        imobiliaria.newProperty("Aradas", 2, 24000);
        imobiliaria.newProperty("São Bernardo", 2, 20000);

        imobiliaria.sell(1001);
        imobiliaria.setAuction(1002, new Date(21, 3, 2023), 4);
        imobiliaria.setAuction(1003, new Date(1, 4, 2023), 3);
        imobiliaria.setAuction(1001, new Date(1, 4, 2023), 4);
        imobiliaria.setAuction(1010, new Date(1, 4, 2023), 4);

        System.out.println(imobiliaria);

    }
}

class RealEstate {
     private final Property[] properties;
     private int currentId;

     public RealEstate() {
         this.properties = new Property[10];
         this.currentId = 1000;
     }

     public void newProperty(String address, int rooms, int price) {
         Property newProperty = new Property(currentId++, address, rooms, price);
         for (int i = 0; i < this.properties.length; i++) {
             if (this.properties[i] == null) {
                 this.properties[i] = newProperty;
                 break;
             }
         }
     }

    public void sell(int id) {
        for (Property property : this.properties) {
            if (property != null && property.getId() == id) {
                if (!property.isAvailable()) {
                    System.out.printf("Imóvel %d não está disponível.\n", id);
                    return;
                } else {
                    property.setAvailability(false);
                    System.out.printf("Imóvel %d vendido.\n", id);
                    return;
                }
            }
        }
        System.out.printf("Imóvel %d não existe.\n", id);
     }

    public void setAuction(int id, Date date, int duration) {
        for (Property property : this.properties) {
            if (property != null && property.getId() == id) {
                if (!property.isAvailable()) {
                    System.out.printf("Imóvel %d não está disponível.\n", id);
                    return;
                } else {
                    Date end = new Date(date.getDay(), date.getMonth(), date.getYear());
                    property.setAuction(date, end);
                    return;
                }
            }
        }
        System.out.printf("Imóvel %d não existe.\n", id);
    }

    public String toString() {
        StringBuilder result = new StringBuilder().append("Propriedades:\n");
        for (Property property : this.properties)
            if (property != null)
                result.append(property).append("\n");
        return result.toString();
    }
}

class Property {
    private final int id;
    private final String address;
    private final int rooms;
    private final int price;
    private boolean availability;
    private Date auctionBegin;
    private Date auctionEnd;

    public Property(int id, String address, int rooms, int price) {
        this.id = id;
        this.address = address;
        this.rooms = rooms;
        this.price = price;
        this.availability = true;
        this.auctionBegin = null;
        this.auctionEnd = null;
    }

    public int getId() {
        return this.id;
    }
    public boolean isAvailable() {
        return this.availability;
    }
    public void setAvailability(boolean availability) {
        this.availability = availability;
    }

    public void setAuction(Date begin, Date end) {
        this.auctionBegin = begin;
        this.auctionEnd = end;
    }

    public Date[] getAuction() {
        return new Date[] {this.auctionBegin, this.auctionEnd};
    }

    public boolean isAuction() {
        return this.auctionBegin != null && this.auctionEnd != null;
    }

    public String toString() {
        return String.format("Imóvel %d; quartos: %d; localidade: %s; preço: %d; disponível: %s%s", this.id, this.rooms, this.address, this.price, this.availability ? "sim" : "não", this.isAuction() ? String.format("; leilão: %s : %s", this.auctionBegin, this.auctionEnd) : "");
    }
}
