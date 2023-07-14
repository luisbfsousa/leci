import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;

public class Date {

    private int day, month, year;

    public Date(int day, int month, int year) {
        if (valid(day, month, year)) {
            this.day = day;
            this.month = month;
            this.year = year;
        } else {
            System.err.println("Invalid date! Couldn't create new date.");
        }
    }

    public Date() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        this.day = Integer.parseInt(dtf.format(now).split("/")[2]);
        this.month = Integer.parseInt(dtf.format(now).split("/")[1]);
        this.year = Integer.parseInt(dtf.format(now).split("/")[0]);
    }

    /**
     * decrements one single day from current date
     */
    public void decrement() {
        day--;
        if (day == 0) {
            month--;
            if (!validMonth(month)) {
                month = 12;
                year--;
            }
            day = monthDays(month, year);
        }
    }

    /**
     * increments one single day from current date
     */
    public void increment() {
        day++;
        if (!valid(day, month, year)) {
            month++;
            day = 1;
            if (!valid(day, month, year)) {
                year++;
                month = 1;
            }
        }
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + day;
        result = prime * result + month;
        result = prime * result + year;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Date other = (Date) obj;
        if (day != other.day)
            return false;
        if (month != other.month)
            return false;
        if (year != other.year)
            return false;
        return true;
    }

    public void set(int day, int month, int year) {
        if (valid(day, month, year)) {
            this.day = day;
            this.month = month;
            this.year = year;
        } else {
            System.err.println("Invalid date! Couldn't set new date.");
        }
    }

    public static boolean valid(int day, int month, int year) {
        if (year < 1) {
            return false;
        }
        if (!validMonth(month)) {
            return false;
        }
        if (day < 1 || day > monthDays(month, year)) {
            return false;
        }
        return true;
    }

    public static boolean validMonth(int month) {
        return month > 0 && month < 13;
    }

    /**
     * 
     * @param month
     * @param year
     * @return number of days in month
     */
    public static int monthDays(int month, int year) {
        int[] days = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
        if (leapYear(year)) {
            days[1] = 29;
        }
        return days[month - 1];
    }

    public static boolean leapYear(int year) {
        return ((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)));
    }

    @Override
    public String toString() {
        return String.format("%04d-%02d-%02d", year, month, day);
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
