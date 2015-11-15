package org.proffart.kindernet.dao;

import org.proffart.kindernet.domain.Relationship;

/**
 * @author Aram Kirakosyan.
 */
public interface RelationDAO {

    void addFriend(Relationship friendship);
}
