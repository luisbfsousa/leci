class Ticket {
    private String festival;
    private int seat;

    public Ticket(String festival, int seat) {
        this.festival = festival;
        this.seat = seat;
    }

    public String getFestival() {
        return festival;
    }

    public int getSeat() {
        return seat;
    }

    @Override
    public String toString() {
        return festival + " " + seat;
    }
}