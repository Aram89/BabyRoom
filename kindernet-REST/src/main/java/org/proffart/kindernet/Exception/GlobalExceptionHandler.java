
package org.proffart.kindernet.Exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Class for handling exceptions
 * Created by Aram on 6/13/2015.
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    /**
     * Returning INTERNAL_SERVER_ERROR
     * for all unhandled exceptions
     *
     * @param e Exception.
     * @return
     */
    @ExceptionHandler(value = Exception.class)
    public ResponseEntity exception(Exception e) {
        return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    /**
     * Returning bad request status
     * and error string for user exceptions
     * @param ae Exception.
     * @return error string in json.
     */

    @ExceptionHandler(AppException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ResponseBody
    public Error userException (AppException ae) {
        return new Error(ae.getMessage());
    }
}