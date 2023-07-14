import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Event implements IEvent {
    private LocalDate data;
    private List<Activity> atividades;

    public Event(LocalDate data) {
        this.data = data;
        atividades = new ArrayList<>();
    }

    @Override
    public Event addActivity(Activity activity) {
        for (Activity act : atividades) {
            if (act instanceof Catering && activity instanceof Catering) {
                return this;
            } else if (act instanceof Sport && activity instanceof Sport) {
                if (((Sport) act).getModalidade().equals(((Sport) activity).getModalidade())) {
                    return this;
                }
            } else if (act instanceof Culture && activity instanceof Culture) {
                if (((Culture) act).getOption().equals(((Culture) activity).getOption())) {
                    return this;
                }
            }
        }
        atividades.add(activity);
        return this;
    }

    @Override
    public LocalDate getDate() {
        return data;
    }

    @Override
    public double totalPrice() {
        double sum = 0;
        for (Activity a : atividades) {
            sum += a.getPreco() * a.getParticipantes();
        }
        return sum;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public List<Activity> getAtividades() {
        return atividades;
    }

    public void setAtividades(List<Activity> atividades) {
        this.atividades = atividades;
    }

    @Override
    public String toString() {
        StringBuilder stb = new StringBuilder(
                String.format("Evento em %s, total=%d euros\n", data.toString(), (int) (totalPrice())));
        for (Activity activity : atividades) {
            stb.append("\t" + activity + "\n");
        }
        return stb.toString();
    }
}
