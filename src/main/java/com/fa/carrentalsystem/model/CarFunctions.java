package com.fa.carrentalsystem.model;

public class CarFunctions {
    private String carId;
    private int functionId;

    public CarFunctions(String carId, int functionId) {
        this.carId = carId;
        this.functionId = functionId;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public int getFunctionId() {
        return functionId;
    }

    public void setFunctionId(int functionId) {
        this.functionId = functionId;
    }
}
