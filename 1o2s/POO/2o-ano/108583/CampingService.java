import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class CampingService implements CampingServiceInterface{
    private int taxId;
    private List<CampingSpace> campingspace;
    private String nome;
    private Collection<CampingSpace> campingSpaces;


    public CampingService(int taxId, List<CampingSpace> campingspace, String nome, Collection<CampingSpace> campingSpaces) {
        this.taxId = taxId;
        this.campingspace = campingspace;
        this.nome = nome;
        this.campingSpaces = campingSpaces;
    }


    public int getTaxId() {
        return this.taxId;
    }

    public void setTaxId(int taxId) {
        this.taxId = taxId;
    }

    public List<CampingSpace> getCampingspace() {
        return this.campingspace;
    }

    public void setCampingspace(List<CampingSpace> campingspace) {
        this.campingspace = campingspace;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Collection<CampingSpace> getCampingSpaces() {
        return this.campingSpaces;
    }

    public void setCampingSpaces(Collection<CampingSpace> campingSpaces) {
        this.campingSpaces = campingSpaces;
    }

    
    public List<Booking> listbBookings(){
        Collection<Booking> bookings = new ArrayList<>();
        //return bookings;
    }

    public List<Booking> listbBookings(SpaceType spaceType){
        Collection<Booking> bookings = new ArrayList<>();
        //return bookings
    }

    public List<CampingSpace> findAvailableCampingSpaces(SpaceType spaceType, LocalDate fromDate, int duration, int[] minDimensions){
        return null;
    }

    public boolean registerClient(int taxId, String name, ClientType type){
        if(taxId != 0 && name != null){
            return true;
        }else {
            return false;
        }
        
    }

    public double calculateTotalCost(CampingSpace campingSpace, int duration){
        int CustoPorDia = 3;
        double custo=0.0;
    
        if (duration > 0 ) {
            custo = CustoPorDia * duration;
        }
    
        return custo;
        
    }

    public boolean checkAvailable(CampingSpace campingSpace, LocalDate startDate, LocalDate endDate){
        if(startDate != null  && endDate != null ){
            return true;
        }else{
            return false;
        }

        
    }

    public void addCampingSpaces(Collection<CampingSpace> campingSpaces){
        campingSpaces = new ArrayList<>();
        
    }

    public void CampingService(String string1, String string2){
        
    }
    

//Alinea 2

    public Iterable<CampingSpace> getAvailableSpacesByTotalArea(LocalDate datafinal, int i) {
        return campingSpaces;
    }


    public void campingService(int nif, String datainicio, String datafim, String tipo, String dimensao) {
    }
}
