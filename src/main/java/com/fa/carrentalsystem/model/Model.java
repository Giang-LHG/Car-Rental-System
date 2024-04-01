package com.fa.carrentalsystem.model;

import java.time.LocalDate;

public class Model {
    private int bookingNo;
    private LocalDate startDateTime;
    private LocalDate endDateTime;
    private String driversInformation;
    private int paymentMethod;
    private int status;

    public Model(int bookingNo, LocalDate startDateTime, LocalDate endDateTime, String driversInformation, int paymentMethod, int status) {
        this.bookingNo = bookingNo;
        this.startDateTime = startDateTime;
        this.endDateTime = endDateTime;
        this.driversInformation = driversInformation;
        this.paymentMethod = paymentMethod;
        this.status = status;
    }

    public int getBookingNo() {
        return bookingNo;
    }

    public void setBookingNo(int bookingNo) {
        this.bookingNo = bookingNo;
    }

    public LocalDate getStartDateTime() {
        return startDateTime;
    }

    public void setStartDateTime(LocalDate startDateTime) {
        this.startDateTime = startDateTime;
    }

    public LocalDate getEndDateTime() {
        return endDateTime;
    }

    public void setEndDateTime(LocalDate endDateTime) {
        this.endDateTime = endDateTime;
    }

    public String getDriversInformation() {
        return driversInformation;
    }

    public void setDriversInformation(String driversInformation) {
        this.driversInformation = driversInformation;
    }

    public int getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(int paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Model{" +
                "bookingNo=" + bookingNo +
                ", startDateTime=" + startDateTime +
                ", endDateTime=" + endDateTime +
                ", driversInformation='" + driversInformation + '\'' +
                ", paymentMethod=" + paymentMethod +
                ", status=" + status +
                '}';
    }
}
