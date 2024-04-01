package com.fa.carrentalsystem.model;

public class CarFunctions {
    private int carId;
    private int functionId;

    public CarFunctions(int carId, int functionId) {
        this.carId = carId;
        this.functionId = functionId;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getFunctionId() {
        return functionId;
    }

    public void setFunctionId(int functionId) {
        this.functionId = functionId;
    }
}
