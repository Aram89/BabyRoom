package org.proffart.babyroom.domain.users;

/**
 * Enum for account types.
 *
 * Created by Aram on 6/27/2015.
 */
public enum AccountType {
    PARENT(1, "parent"),
    NANNY(2, "nanny"),
    DOCTOR(3, "doctor"),
    SHOP(4, "shop");

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
