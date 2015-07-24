package org.proffart.babyroom.Exception;

/**
 * Model for error representations.
 *
 * Created by Aram on 6/18/2015.
 */
public class Error {

    public static final String USER_NAME_EXISTS = "userNameExists";
    public static final String EMAIL_EXISTS = "emailExists";
    public static final String WRONG_USER_NAME = "wrongUserName";
    public static final String WRONG_PASSWORD = "wrongPassword";

    // Files
    public static final String EMPTY_FILE = "fileIsEmpty";


    private String errorString;

    public Error(String errorString) {
        this.errorString = errorString;
    }

    public String getErrorString() {
        return errorString;
    }

    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }

}
