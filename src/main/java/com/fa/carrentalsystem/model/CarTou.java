package com.fa.carrentalsystem.model;

public class CarTou {
    private String carId;

    private int touId;


    public CarTou(String carId, int touId) {
        this.carId = carId;
        this.touId = touId;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public int getTouId() {
        return touId;
    }

    public void setTouId(int touId) {
        this.touId = touId;
    }

}
