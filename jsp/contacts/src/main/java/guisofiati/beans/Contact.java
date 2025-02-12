package guisofiati.beans;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Contact {
	
	private String name;
	private String phoneNumber;
	
	private static List<Contact> contacts = new ArrayList<>();
	
	public Contact() {
		
	}
	
	public Contact(String name, String phoneNumber) {
		this.name = name;
		this.phoneNumber = phoneNumber;
	}

	public static List<Contact> getContacts() {
		return contacts;
	}
	
	public void addNewContact(Contact contact) {
		contacts.add(contact);
	}
	
	public static Contact getContactByName(String name) {
		Contact contact = contacts.stream().filter(c -> c.getName().equals(name)).findFirst().orElse(null);
		if (contact == null) {
			return null;
		}
		return contact;
	}
		
	public static Contact getContactByPhoneNumber(String phoneNumber) {
		Contact contact = contacts.stream().filter(c -> c.getPhoneNumber().equals(phoneNumber)).findFirst().orElse(null);
		if (contact == null) {
			return null;
		}
		return contact;
	}
				
	public static void deleteContact(String phoneNumber) {
		Contact contactToDelete = getContactByPhoneNumber(phoneNumber);
		
		if (contactToDelete == null) {
			return;
		}
		
		contacts.remove(contactToDelete);
	}
	
	public static int getTotalContacts() {
		return contacts.size();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(phoneNumber);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Contact other = (Contact) obj;
		return Objects.equals(phoneNumber, other.phoneNumber);
	}

	@Override
	public String toString() {
		return "Contact [name=" + name + ", phoneNumber=" + phoneNumber + "]";
	}
}
