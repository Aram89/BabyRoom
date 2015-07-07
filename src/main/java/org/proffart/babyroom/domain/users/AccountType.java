package org.proffart.babyroom.domain.users;

/**
 * Enum for account types.
 *
 * Created by Aram on 6/27/2015.
 */
public enum AccountType {
    PARENT(1, "PARENT"),
    EXPERT(2, "EXPERT"),
    DOCTOR(3, "DOCTOR"),
    SELLER(4, "SELLER");

    public int getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    AccountType(int type, String name) {
        this.type = type;
        this.name = name;
    }

    private final int type;
    private final String name;
}
