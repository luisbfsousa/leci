package aula07.ex2;

public class DateND extends Date {
    private int daysSince;

    public DateND(int day, int month, int year) {
        set(day, month, year);
    }

    private DateYMD convertToYMD() {
        DateYMD dateYMD = new DateYMD(1, 1, 2000);

        if (daysSince < 0) dateYMD.decrement(daysSince);
        else if (daysSince > 0) dateYMD.increment(daysSince);

        return dateYMD;
    }

    public void set(int day, int month, int year) {
        DateYMD baseDate = new DateYMD(1, 1, 2020);
        DateYMD targetDate = new DateYMD(day, month, year);

        int daysSinceAux = 0;

        if (targetDate == baseDate) {
            daysSinceAux = 0;
        } else if (targetDate.compareTo(baseDate) < 0) {
            while (targetDate.compareTo(baseDate) < 0) {
                baseDate.decrement();
                daysSinceAux -= 1;
            }
        } else {
            while (targetDate.compareTo(baseDate) > 0) {
                baseDate.increment();
                daysSinceAux += 1;
            }
        }

        this.daysSince = daysSinceAux;
        
    }

    public int getDay() {
        return this.convertToYMD().getDay();
    }

    public int getMonth() {
        return this.convertToYMD().getMonth();
    }

    public int getYear() {
        return this.convertToYMD().getYear();
    }

    public void increment() { daysSince++; }
    public void decrement() { daysSince--; }

    public int compareTo(DateND date2) {
        if (this.daysSince == date2.daysSince) return 0;
        else if (this.daysSince < date2.daysSince) return -1;
        else return 1;
    }
    
}
