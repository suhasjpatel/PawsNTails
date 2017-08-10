package com.jhuep.pawsntails.models;

import com.jhuep.pawsntails.shared.Species;

import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

public class Pet {

    @Id
    private String id;
    private String name;
    private Date birthday;
    private String gender;
    private boolean neuteredOrSpayed;
    private String weight;
    private Species species;
    private String color;
    private String breed;
    private boolean mixedBreed;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "OWNER_ID")
    private Account owner;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public boolean isNeuteredOrSpayed() {
        return neuteredOrSpayed;
    }

    public void setNeuteredOrSpayed(boolean neuteredOrSpayed) {
        this.neuteredOrSpayed = neuteredOrSpayed;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public Species getSpecies() {
        return species;
    }

    public void setSpecies(Species species) {
        this.species = species;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public boolean isMixedBreed() {
        return mixedBreed;
    }

    public void setMixedBreed(boolean mixedBreed) {
        this.mixedBreed = mixedBreed;
    }

    public Account getOwner() {
        return owner;
    }

    public void setOwner(Account owner) {
        this.owner = owner;
    }
}
