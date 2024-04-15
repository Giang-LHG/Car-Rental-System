package com.fa.carrentalsystem.model;

import java.time.LocalDateTime;

public class Booking {
    private Integer bookingNo;
    private LocalDateTime startDateTime;
    private LocalDateTime endDateTime;
    private String driversInformation;
    private Integer paymentMethod;
    private Integer status;
    private String customerId;
    private String licensePlate;

    public Booking(Integer bookingNo, LocalDateTime startDateTime, LocalDateTime endDateTime, String driversInformation, Integer paymentMethod, Integer status, String customerId, String licensePlate) {
        this.bookingNo = bookingNo;
        this.startDateTime = startDateTime;
        this.endDateTime = endDateTime;
        this.driversInformation = driversInformation;
        this.paymentMethod = paymentMethod;
        this.status = status;
        this.customerId = customerId;
        this.licensePlate = licensePlate;
    }

    public Booking(LocalDateTime startDateTime, LocalDateTime endDateTime, String driversInformation, Integer paymentMethod, Integer status, String customerId, String licensePlate) {
        this.startDateTime = startDateTime;
        this.endDateTime = endDateTime;
        this.driversInformation = driversInformation;
        this.paymentMethod = paymentMethod;
        this.status = status;
        this.customerId = customerId;
        this.licensePlate = licensePlate;
    }

    public Integer getBookingNo() {
        return bookingNo;
    }

    public void setBookingNo(Integer bookingNo) {
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

    public Integer getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(Integer paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
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
