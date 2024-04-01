package com.fa.carrentalsystem.model;

public class CarTou {
    private int carId;

    private int touId;

    private String type;

    public CarTou(int carId, int touId, String type) {
        this.carId = carId;
        this.touId = touId;
        this.type = type;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getTouId() {
        return touId;
    }

    public void setTouId(int touId) {
        this.touId = touId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
