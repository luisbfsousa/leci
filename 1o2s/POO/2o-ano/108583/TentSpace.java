public class TentSpace extends CampingSpace {
    public TentSpace(String location, int[] dimensions, double price) {
        super(location, dimensions, price);
    }

    public SpaceType getType() {
        return SpaceType.TENT;
    }
}
