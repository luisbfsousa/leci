package exames_passados.POO2122;

import java.time.LocalDate;

public interface IEvent {
    Event addActivity(Sport activity);
    LocalDate getDate();
    double totalPrice();
}
