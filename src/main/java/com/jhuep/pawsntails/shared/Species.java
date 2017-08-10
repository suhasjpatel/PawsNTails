package com.jhuep.pawsntails.shared;

public enum Species {
    DOG("Dog"),
    CAT("Cat");

    private final String type;

    Species(String type) {
        this.type = type;
    }

    public static Species toSpecies(String s) {
        switch (s) {
            case "Dog":
                return DOG;
            case "Cat":
                return CAT;
            default:
                return null;
        }
    }

    @Override
    public String toString() {
        return type;
    }
}
