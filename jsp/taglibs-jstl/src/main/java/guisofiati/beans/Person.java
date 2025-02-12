package guisofiati.beans;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class Person {
	
	private Long id;
	private String name;
	private String email;
	private String phoneNumber;
	private Date birthdate;
	
	private static List<Person> persons = new ArrayList<Person>(Arrays.asList(
			new Person(1L, "Joao", "joao@gmail.com", "11999998888", convertLocalDateToDate(1966, 6, 5)),
			new Person(2L, "Maria", "maria@gmail.com", "11977776666", convertLocalDateToDate(1965, 9, 9)),
			new Person(3L, "Jose", "11955554444", convertLocalDateToDate(2000, 7, 12)),
			new Person(4L, "Pedro", "11922112211", convertLocalDateToDate(1989, 10, 18)),
			new Person(5L, "Josefina", "josefina@gmail.com", "11922119922", convertLocalDateToDate(1954, 6, 5)),
			new Person(6L, "Carlos", "11999886677", convertLocalDateToDate(1999, 2, 21)),
			new Person(7L, "Madalena", "madalena@gmail.com", "11966221199", convertLocalDateToDate(2002, 4, 29)),
			new Person(8L, "Pablo", "11911009922", convertLocalDateToDate(2001, 9, 11)),
			new Person(9L, "Olivia", "olivia@gmail.com", "11966221133", convertLocalDateToDate(1981, 3, 31)),
			new Person(10L, "Ricardo", "ricardo@gmail.com", "11922113355", convertLocalDateToDate(1992, 11, 22))
			));
	
	public Person() {
		
	}

	public Person(Long id, String name, String email, String phoneNumber, Date birthdate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.birthdate = birthdate;
	}
	
	public Person(Long id, String name, String phoneNumber, Date birthdate) {
		super();
		this.id = id;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.birthdate = birthdate;
	}
	
	public static Date convertLocalDateToDate(int year, int month, int day) {
		return Date.from(LocalDate.of(year, month, day).atStartOfDay(ZoneId.systemDefault()).toInstant());
	}
	
	public static List<Person> getPersons() {
		return persons;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public Date getBirthDate() {
		return birthdate;
	}

	public void setBirthDate(Date birthdate) {
		this.birthdate = birthdate;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Person other = (Person) obj;
		return Objects.equals(id, other.id);
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", email=" + email + ", phoneNumber=" + phoneNumber
				+ ", birthdate=" + birthdate + "]";
	}
}
