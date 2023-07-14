import java.time.LocalDate;
import java.util.Collection;
import java.util.List;

public interface CampingServiceInterface {
    boolean registerClient(int taxId, String name, ClientType type); //
    Client getClient(int taxId); //
    void addCampingSpace(CampingSpace campingSpace); //
    void addCampingSpaces(Collection<CampingSpace> campingSpaces); //
    boolean checkAvailable(CampingSpace campingSpace, LocalDate startDate, LocalDate endDate); //
    List<CampingSpace> findAvailableCampingSpaces(SpaceType spaceType, LocalDate fromDate, int duration, int[] minDimensions); //
    boolean bookCampingSpace(Client client, CampingSpace campingSpace, LocalDate startDate, int duration);
    double calculateTotalCost(CampingSpace campingSpace, int duration); //
    List<String> listBookings();  //
    List<String> listBookings(SpaceType spaceType);  //
}
