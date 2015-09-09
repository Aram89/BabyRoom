package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.Friendship;

/**
 * @author Aram Kirakosyan.
 */
public interface RelationDAO {

    void addFriend(Friendship friendship);
}
