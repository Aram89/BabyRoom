package org.proffart.babyroom.utils;

import org.codehaus.jackson.map.ObjectMapper;
import org.proffart.babyroom.controller.json.Response;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.io.IOException;

/**
 * Created by Aram on 5/24/2015.
 */
public class ResultUtil {

    public static ResponseEntity sendCheckResult (boolean result, String error) throws IOException {
        Response response = new Response();
        response.setErrorString(error);
        response.setResult(result);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(response);
        return new ResponseEntity(json, HttpStatus.OK);
    }
}
