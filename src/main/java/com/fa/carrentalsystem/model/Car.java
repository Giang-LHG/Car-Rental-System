package com.fa.carrentalsystem.model;

import java.time.LocalDate;

public class Car {
    private String name;
    private String licensePlate;
    private String brandId;
    private String modelId;
    private int numberOfSeatId;
    private int productionYear;
    private boolean transmissionType;
    private boolean fuelType;
    private int fuelConsumption;
    private Double basePrice;
    private Double deposit;
    private String address;
    private String descriptions;
    private int additionalFunctionId;
    private int termOfUseId;
    private String images;
    private String ownerId;

    public Car(String name, String licensePlate, String brandId, String modelId, int numberOfSeatId, int productionYear, boolean transmissionType, boolean fuelType, int fuelConsumption, Double basePrice, Double deposit, String address, String descriptions, int additionalFunctionId, int termOfUseId, String images, String ownerId) {
        this.name = name;
        this.licensePlate = licensePlate;
        this.brandId = brandId;
        this.modelId = modelId;
        this.numberOfSeatId = numberOfSeatId;
        this.productionYear = productionYear;
        this.transmissionType = transmissionType;
        this.fuelType = fuelType;
        this.fuelConsumption = fuelConsumption;
        this.basePrice = basePrice;
        this.deposit = deposit;
        this.address = address;
        this.descriptions = descriptions;
        this.additionalFunctionId = additionalFunctionId;
        this.termOfUseId = termOfUseId;
        this.images = images;
        this.ownerId = ownerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public String getModelId() {
        return modelId;
    }

    public void setModelId(String modelId) {
        this.modelId = modelId;
    }

    public int getNumberOfSeatId() {
        return numberOfSeatId;
    }

    public void setNumberOfSeatId(int numberOfSeatId) {
        this.numberOfSeatId = numberOfSeatId;
    }

    public int getProductionYear() {
        return productionYear;
    }

    public void setProductionYear(int productionYear) {
        this.productionYear = productionYear;
    }

    public boolean isTransmissionType() {
        return transmissionType;
    }

    public void setTransmissionType(boolean transmissionType) {
        this.transmissionType = transmissionType;
    }

    public boolean isFuelType() {
        return fuelType;
    }

    public void setFuelType(boolean fuelType) {
        this.fuelType = fuelType;
    }

    public int getFuelConsumption() {
        return fuelConsumption;
    }

    public void setFuelConsumption(int fuelConsumption) {
        this.fuelConsumption = fuelConsumption;
    }

    public Double getBasePrice() {
        return basePrice;
    }

    public void setBasePrice(Double basePrice) {
        this.basePrice = basePrice;
    }

    public Double getDeposit() {
        return deposit;
    }

    public void setDeposit(Double deposit) {
        this.deposit = deposit;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public int getAdditionalFunctionId() {
        return additionalFunctionId;
    }

    public void setAdditionalFunctionId(int additionalFunctionId) {
        this.additionalFunctionId = additionalFunctionId;
    }

    public int getTermOfUseId() {
        return termOfUseId;
    }

    public void setTermOfUseId(int termOfUseId) {
        this.termOfUseId = termOfUseId;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

    @Override
    public String toString() {
        return "Car{" +
                "name='" + name + '\'' +
                ", licensePlate='" + licensePlate + '\'' +
                ", brandId='" + brandId + '\'' +
                ", modelId='" + modelId + '\'' +
                ", numberOfSeatId=" + numberOfSeatId +
                ", productionYear=" + productionYear +
                ", transmissionType=" + transmissionType +
                ", fuelType=" + fuelType +
                ", fuelConsumption=" + fuelConsumption +
                ", basePrice=" + basePrice +
                ", deposit=" + deposit +
                ", address='" + address + '\'' +
                ", descriptions='" + descriptions + '\'' +
                ", additionalFunctionId=" + additionalFunctionId +
                ", termOfUseId=" + termOfUseId +
                ", images='" + images + '\'' +
                ", ownerId=" + ownerId +
                '}';
    }
}
