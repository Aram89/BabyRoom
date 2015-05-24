package org.proffart.babyroom.controller.json;

/**
 * Created by Aram on 5/24/2015.
 */
public class Response {

    private boolean result;
    private String errorString;

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public String getErrorString() {
        return errorString;
    }

    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }
}
