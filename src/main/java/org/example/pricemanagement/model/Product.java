package org.example.pricemanagement.model;

import jakarta.persistence.*;

@Entity
@Table(name = "product_catalog")
public class Product {
    @Id
    @GeneratedValue
    private Integer id;

    @Column(name = "pn_code")
    private String pnCode;

    @Column(name = "price_fob")
    private Double priceFob;

    public Product() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPnCode() {
        return pnCode;
    }

    public void setPnCode(String pnCode) {
        this.pnCode = pnCode;
    }

    public Double getPriceFob() {
        return priceFob;
    }

    public void setPriceFob(Double priceFob) {
        this.priceFob = priceFob;
    }
}
