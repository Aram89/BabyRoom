package org.proffart.babyroom.utils;

/**
 * @author Aram Kirakosyan.
 */
public interface RequestMappings {
    // Login and Registration.
    String USER = "user";
    String CREATE_PARENT = "/create-parent";
    String CREATE_EXPERT = "/create-expert";
    String CREATE_SELLER = "/create-seller";
    String PARENT_LOGIN = "/login-parent";
    String EXPERT_LOGIN = "/login-expert";
    String SELLER_LOGIN = "/login-seller";
    String CREATE_CHILDREN = "/create-children";
    String CHECK_EMAIL = "/check-email";
    String LOGIN = "/login";

    // Posts
    String CREATE_POST = "/create-post";
    String UPLOAD_FILE = "/upload-file";

    // Pages
    String LOGIN_PAGE = "/login";
    String CREATE_CHILDREN_PAGE = "/children-create";
    String INDEX = "/index";

}
