package de.flatspection.domain;

import java.time.LocalDate;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;

public class User {

	private Long userId;
	private String firstname;
	private String lastname;
	private String email;
	private String password;
	private LocalDate birthday;
	private String phone;
	private String mobile;
	private Gender gender;
	private EnumSet<UserStatus> statusSet;
	private Address address;
	private Authority authority;
	private List<Payment> paymentList;
	private Locale language;
	private List<MediaTemplate> mediaTemplateList;


	public User() {

	}

	public User(Long userId, String firstname, String lastname, String email, String password, LocalDate birthday,
			String phone, String mobile, Gender gender, EnumSet<UserStatus> statusSet, Address address,
			Authority authority, List<Payment> paymentList, Locale language, List<MediaTemplate> mediaTemplateList) {
		super();
		this.userId = userId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
		this.birthday = birthday;
		this.phone = phone;
		this.mobile = mobile;
		this.gender = gender;
		this.statusSet = statusSet;
		this.address = address;
		this.paymentList = paymentList;
		this.language = language;
		this.mediaTemplateList = mediaTemplateList;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDate getBirthday() {
		return birthday;
	}

	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}

	public EnumSet<UserStatus> getStatusSet() {
		return statusSet;
	}

	public void setStatusSet(EnumSet<UserStatus> statusSet) {
		this.statusSet = statusSet;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}

	public List<Payment> getPaymentList() {
		return paymentList;
	}

	public void setPaymentList(List<Payment> paymentList) {
		this.paymentList = paymentList;
	}

	public Locale getLanguage() {
		return language;
	}

	public void setLanguage(Locale language) {
		this.language = language;
	}

	public List<MediaTemplate> getMediaTemplateList() {
		return mediaTemplateList;
	}

	public void setMediaTemplateList(List<MediaTemplate> mediaTemplateList) {
		this.mediaTemplateList = mediaTemplateList;
	}

	

}
