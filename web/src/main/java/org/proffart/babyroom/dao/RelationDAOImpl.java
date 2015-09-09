package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.Relationship;
import org.springframework.stereotype.Repository;

/**
 * @author Aram Kirakosyan.
 */
@Repository
public class RelationDAOImpl extends BaseDAO implements RelationDAO {

    @Override
    public void addFriend(Relationship friendship) {
        persist(friendship);
    }
}
