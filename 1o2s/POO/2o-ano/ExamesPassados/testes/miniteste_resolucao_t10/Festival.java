public class Festival {
    private DateYMD startDate, EndDate;
    private String name, local;
    private int numTickets;

    public Festival(DateYMD startDate, DateYMD EndDate, String name, String local, int numTickets) {
        this.startDate = startDate;
        this.EndDate = EndDate;
        this.name = name;
        this.local = local;
        this.numTickets = numTickets;
    }

    public DateYMD getStartDate() {
        return this.startDate;
    }

    public void setStartDate(DateYMD startDate) {
        this.startDate = startDate;
    }

    public DateYMD getEndDate() {
        return this.EndDate;
    }

    public void setEndDate(DateYMD EndDate) {
        this.EndDate = EndDate;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocal() {
        return this.local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public int getNumTickets() {
        return this.numTickets;
    }

    public void setNumTickets(int numTickets) {
        this.numTickets = numTickets;
    }

    public Festival startDate(DateYMD startDate) {
        setStartDate(startDate);
        return this;
    }

    public Festival EndDate(DateYMD EndDate) {
        setEndDate(EndDate);
        return this;
    }

    public Festival name(String name) {
        setName(name);
        return this;
    }

    public Festival local(String local) {
        setLocal(local);
        return this;
    }

    public Festival numTickets(int numTickets) {
        setNumTickets(numTickets);
        return this;
    }

    @Override
    public String toString() {
        return "{" +
            " startDate='" + getStartDate() + "'" +
            ", EndDate='" + getEndDate() + "'" +
            ", name='" + getName() + "'" +
            ", local='" + getLocal() + "'" +
            ", numTickets='" + getNumTickets() + "'" +
            "}";
    }

}
