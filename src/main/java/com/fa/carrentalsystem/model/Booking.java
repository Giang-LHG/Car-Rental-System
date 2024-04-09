package com.fa.carrentalsystem.model;

import java.time.LocalDateTime;

public class Booking {
    private int bookingNo;
    private LocalDateTime startDateTime;
    private LocalDateTime endDateTime;
    private String driversInformation;
    private int paymentMethod;
    private int status;
    private String customerId;
    private String licensePlate;

    public Booking(int bookingNo, LocalDateTime startDateTime, LocalDateTime endDateTime, String driversInformation, int paymentMethod, int status, String customerId, String licensePlate) {
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

    public LocalDateTime getStartDateTime() {
        return startDateTime;
    }

    public void setStartDateTime(LocalDateTime startDateTime) {
        this.startDateTime = startDateTime;
    }

    public LocalDateTime getEndDateTime() {
        return endDateTime;
    }

    public void setEndDateTime(LocalDateTime endDateTime) {
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
