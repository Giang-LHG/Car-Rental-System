package com.fa.carrentalsystem.model;

import java.time.LocalDate;

public class Feedback {
    private int id;
    private float ratings;
    private String content;
    private LocalDate dateTime;
    private int bookingId;
    private int customerId;

    public Feedback(int id, float ratings, String content, LocalDate dateTime, int bookingId, int customerId) {
        this.id = id;
        this.ratings = ratings;
        this.content = content;
        this.dateTime = dateTime;
        this.bookingId = bookingId;
        this.customerId = customerId;
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

    public LocalDate getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDate dateTime) {
        this.dateTime = dateTime;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "id=" + id +
                ", ratings=" + ratings +
                ", content='" + content + '\'' +
                ", dateTime=" + dateTime +
                ", bookingId=" + bookingId +
                ", customerId=" + customerId +
                '}';
    }
}
