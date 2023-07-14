public class CarSpace extends CampingSpace {
    public CarSpace(String location, int[] dimensions, double price) {
        super(location, dimensions, price);
    }

    public SpaceType getType() {
        return SpaceType.CAR;
    }
    
}
