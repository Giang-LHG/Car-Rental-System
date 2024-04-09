package com.fa.carrentalsystem.model;

public class CarModel {
    private Integer id;
    private String name;
    private Integer parentId;
    private String type;

    public CarModel(Integer id, String name, Integer parentId, String type) {
        this.id = id;
        this.name = name;
        this.parentId = parentId;
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

	@Override
	public String toString() {
		return "CarModel [id=" + id + ", name=" + name + ", parentId=" + parentId + ", type=" + type + "]\n";
	}
    
}
