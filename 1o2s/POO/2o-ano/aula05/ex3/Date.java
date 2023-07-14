package aula05.ex3 	;

public class Date {
	private int day;
	private int month;
	private int year;

	public Date(int day, int month, int year) {
		this.day = day;
		this.month = month;
		this.year = year;

		if (!valid(day, month, year)) {
			throw new IllegalArgumentException("Invalid date");
		}
	}

	public boolean validMonth(int month) {
		return month >= 1 && month <= 12;
	}

	public static int monthDays(int month, int year) {
		if (month == 2) {
			if (leapYear(year))
				return 29;
			return 28;
		} else if (month == 4 || month == 6 || month == 9 || month == 11) {
			return 30;
		}

		return 31;
	}

	public static boolean leapYear(int year) {
		return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
	}

	public boolean valid(int day, int month, int year) {
		return validMonth(month) && day >= 1 && day <= monthDays(month, year);
	}

	public void set(int day, int month, int year) {
		if (valid(day, month, year)) {
			this.day = day;
			this.month = month;
			this.year = year;
		} else {
			System.out.println("Invalid date");
		}
	}

	public int getDay() {
		return this.day;
	}

	public int getMonth() {
		return this.month;
	}

	public int getYear() {
		return this.year;
	}

	public void increment() {
		if (this.day == monthDays(this.month, this.year)) {
			this.day = 1;
			if (this.month == 12) {
				this.month = 1;
				this.year++;
			} else {
				this.month++;
			}
		} else {
			this.day++;
		}
	}

	public void increment(int days) {
		for (int i = 0; i < days; i++)
			increment();
	}

	public void decrement() {
		if (this.day == 1) {
			if (this.month == 1) {
				this.month = 12;
				this.year--;
			} else {
				this.month--;
			}
			this.day = monthDays(this.month, this.year);
		} else {
			this.day--;
		}
	}

	public void decrement(int days) {
		for (int i = 0; i < days; i++)
			decrement();
	}

	public String toString() {
		return String.format("%04d-%02d-%02d", this.year, this.month, this.day);
	}

}
