package org.proffart.babyroom.utils;

import org.apache.commons.codec.digest.DigestUtils;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Aram on 5/24/2015.
 */
public class Utils {

    public static String hash (String key) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String sha256hex = DigestUtils.sha256Hex(key);
        return sha256hex;
    }
}
