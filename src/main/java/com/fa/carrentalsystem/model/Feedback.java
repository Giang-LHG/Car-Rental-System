package com.fa.carrentalsystem.model;

import java.time.LocalDateTime;

public class Feedback {
    private int id;
    private float ratings;
    private String content;
    private LocalDateTime dateTime;
    private Booking booking;
    private User customer;
	public Feedback(int id, float ratings, String content, LocalDateTime dateTime, Booking booking, User customer) {
		super();
		this.id = id;
		this.ratings = ratings;
		this.content = content;
		this.dateTime = dateTime;
		this.booking = booking;
		this.customer = customer;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getRatings() {
		return ratings;
	}
	public void setRatings(float ratings) {
		this.ratings = ratings;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public LocalDateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}
	public Booking getBooking() {
		return booking;
	}
	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	public User getCustomer() {
		return customer;
	}
	public void setCustomer(User customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Feedback [id=" + id + ", ratings=" + ratings + ", content=" + content + ", dateTime=" + dateTime
				+ ", booking=" + booking + ", customer=" + customer + "]\n";
	}

}
