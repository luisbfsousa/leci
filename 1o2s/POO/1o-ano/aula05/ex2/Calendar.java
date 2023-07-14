package aula05.ex2;

import aula05.ex1.Date;

public class Calendar {
	private int year;
	private int weekDay;

	public Calendar(int year, int weekDay) {
		this.year = year;
		this.weekDay = weekDay;
	}

	public int getYear() {
		return this.year;
	}

	public int firstWeekdayOfYear() {
		return this.weekDay;
	}

	public int firstWeekdayOfMonth(int month) {
		int firstWeekday = this.weekDay;
		for (int i = 1; i < month; i++) {
			firstWeekday += Date.monthDays(i, this.year);
		}
		return firstWeekday % 7 == 0 ? 7 : firstWeekday % 7;
	}

	public void printMonth(int month) {
		int firstWeekday = this.firstWeekdayOfMonth(month);
		int monthDays = Date.monthDays(month, this.year);
		String monthName = monthName(month);

		int monthNameLength = monthName.length();
		int yearLength = String.valueOf(year).length();
		int padding = (20 - monthNameLength - yearLength) / 2;
		String paddingString = "";
		for (int i = 0; i < padding; i++) paddingString += " ";
		
		System.out.println(paddingString + monthName + " " + year + paddingString);
		System.out.println("Su Mo Tu We Th Fr Sa");
		
		for (int i = 1; i < firstWeekday; i++) System.out.print("   ");

		for (int i = 1; i <= monthDays; i++) {
			System.out.printf("%2d ", i);
			if ((i + firstWeekday - 1) % 7 == 0 || i == monthDays) System.out.println();
		}
	}

	public String monthName(int month) {
		switch (month) {
			case 1: return "January";
			case 2: return "February";
			case 3: return "March";
			case 4: return "April";
			case 5: return "May";
			case 6: return "June";
			case 7: return "July";
			case 8: return "August";
			case 9: return "September";
			case 10: return "October";
			case 11: return "November";
			case 12: return "December";
			default: return "";
		}
	}

	public String toString() {
		for (int i = 1; i <= 12; i++) {
			printMonth(i);
			if (i != 12) System.out.println();
		}

		return "Calendar: " + this.year;
	}
}
