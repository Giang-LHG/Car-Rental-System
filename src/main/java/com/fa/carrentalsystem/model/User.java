package com.fa.carrentalsystem.model;

import java.time.LocalDate;

public class User {
    private String nationalId;
    private String name;
    private LocalDate dateOfBirth;
    private String phone;
    private String email;
    private String address;
    private String drivingLicense;
    private Double wallet;
    private String password;
    private int roleId;

    public User(String nationalId, String name, LocalDate dateOfBirth, String phone, String email, String address, String drivingLicense, Double wallet, String password, int roleId) {
        this.nationalId = nationalId;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.drivingLicense = drivingLicense;
        this.wallet = wallet;
        this.password = password;
        this.roleId = roleId;
    }

    public String getNationalId() {
        return nationalId;
    }

    public void setNationalId(String     nationalId) {
        this.nationalId = nationalId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDrivingLicense() {
        return drivingLicense;
    }

    public void setDrivingLicense(String drivingLicense) {
        this.drivingLicense = drivingLicense;
    }

    public Double getWallet() {
        return wallet;
    }

    public void setWallet(Double wallet) {
        this.wallet = wallet;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    @Override
    public String toString() {
        return "User{" +
                "nationalId=" + nationalId +
                ", name='" + name + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", drivingLicense='" + drivingLicense + '\'' +
                ", wallet=" + wallet +
                ", password='" + password + '\'' +
                ", role_id=" + roleId +
                '}';
    }
}
