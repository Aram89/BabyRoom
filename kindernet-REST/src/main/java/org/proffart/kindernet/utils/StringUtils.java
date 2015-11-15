package org.proffart.kindernet.utils;

import org.apache.commons.lang3.RandomStringUtils;

/**
 * Created by Aram on 5/17/2015.
 */
public class StringUtils {

    public static String generateRandomStrong (int length) {
        return RandomStringUtils.random(length);
    }
}
