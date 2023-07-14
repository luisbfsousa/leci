package aula07.ex2;

public class DateYMD extends Date {
	private int day;
	private int month;
	private int year;

	public DateYMD(int day, int month, int year) {
		this.day = day;
		this.month = month;
		this.year = year;

		if (!valid(day, month, year)) {
			throw new IllegalArgumentException("Invalid date");
		}
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

	public int compareTo(DateYMD date2) {
		if (this.getYear() < date2.getYear()) return -1;
		else if (this.getYear() > date2.getYear()) return 1;

		if (this.getMonth() < date2.getMonth()) return -1;
		else if (this.getMonth() > date2.getMonth()) return 1;

		if (this.getDay() < date2.getDay()) return -1;
		else if (this.getDay() > date2.getDay()) return 1;

		return 0;
	}
}