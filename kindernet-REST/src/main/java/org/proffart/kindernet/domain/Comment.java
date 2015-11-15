package org.proffart.kindernet.domain;

/**
 * @author Aram Kirakosyan.
 *
 * Model for comments representation.
 * Every comment is conidered as an action.
 */
public class Comment {
    private long commentId;
    private long actionId;
    private String content;
}
