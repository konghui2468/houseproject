package com.qianfeng.house.pojo;

public class tH {
    private int id;
    private String tName;
    private String tUrl;
    private int price;
    private double area;
    private int room1;
    private int room2;
    private int room3;
    private String location;
    private String level;
    private String tier;
    private String packType;

    @Override
    public String toString() {
        return "tH{" +
                "id=" + id +
                ", tName='" + tName + '\'' +
                ", tUrl='" + tUrl + '\'' +
                ", price=" + price +
                ", area=" + area +
                ", room1=" + room1 +
                ", room2=" + room2 +
                ", room3=" + room3 +
                ", location='" + location + '\'' +
                ", level='" + level + '\'' +
                ", tier='" + tier + '\'' +
                ", packType='" + packType + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public String gettUrl() {
        return tUrl;
    }

    public void settUrl(String tUrl) {
        this.tUrl = tUrl;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public int getRoom1() {
        return room1;
    }

    public void setRoom1(int room1) {
        this.room1 = room1;
    }

    public int getRoom2() {
        return room2;
    }

    public void setRoom2(int room2) {
        this.room2 = room2;
    }

    public int getRoom3() {
        return room3;
    }

    public void setRoom3(int room3) {
        this.room3 = room3;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getTier() {
        return tier;
    }

    public void setTier(String tier) {
        this.tier = tier;
    }

    public String getPackType() {
        return packType;
    }

    public void setPackType(String packType) {
        this.packType = packType;
    }
}
