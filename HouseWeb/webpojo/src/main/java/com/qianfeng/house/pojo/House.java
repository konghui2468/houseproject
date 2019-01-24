package com.qianfeng.house.pojo;

public class House {
    private Integer id;
    private String url;
    private String title;
    private String prl;
    private String describe;

    @Override
    public String toString() {
        return "House{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", title='" + title + '\'' +
                ", prl='" + prl + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public String getPrl() {
        return prl;
    }

    public void setPrl(String prl) {
        this.prl = prl;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
}
