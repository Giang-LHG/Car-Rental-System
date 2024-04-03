package com.fa.carrentalsystem.model;

import java.time.LocalDate;

public class Booking {
    private int bookingNo;
    private LocalDate startDateTime;
    private LocalDate endDateTime;
    private String driversInformation;
    private int paymentMethod;
    private int status;
    private String customerId;
    private String licensePlate;

    public Booking(int bookingNo, LocalDate startDateTime, LocalDate endDateTime, String driversInformation, int paymentMethod, int status, String customerId, String licensePlate) {
        this.bookingNo = bookingNo;
        this.startDateTime = startDateTime;
        this.endDateTime = endDateTime;
        this.driversInformation = driversInformation;
        this.paymentMethod = paymentMethod;
        this.status = status;
        this.customerId = customerId;
        this.licensePlate = licensePlate;
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

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "bookingNo=" + bookingNo +
                ", startDateTime=" + startDateTime +
                ", endDateTime=" + endDateTime +
                ", driversInformation='" + driversInformation + '\'' +
                ", paymentMethod=" + paymentMethod +
                ", status=" + status +
                ", customerId=" + customerId +
                ", licensePlate='" + licensePlate + '\'' +
                '}';
    }
}
