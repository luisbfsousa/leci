public class CaravanSpace extends CampingSpace{
    public CaravanSpace(String location, int[] dimensions, double price) {
        super(location, dimensions, price);
    }

    public SpaceType getType() {
        return SpaceType.CARAVAN;
    }
}