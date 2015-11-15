package org.proffart.kindernet.utils;

import org.apache.commons.codec.digest.DigestUtils;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

/**
 * @author Aram Kirakosyan.
 */
public class Utils {

    public static String hash (String key) {
        try {
            String sha256hex = DigestUtils.sha256Hex(key);
            return sha256hex;
        } catch (Exception e){
            e.printStackTrace();
        }
        // Can't encode key, returning value.
        return key;

    }
}
