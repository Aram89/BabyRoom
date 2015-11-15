package org.proffart.kindernet.service;

import org.proffart.kindernet.dao.RelationDAO;
import org.proffart.kindernet.domain.Relationship;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Aram Kirakosyan.
 */
@Transactional
@Service
public class RelationServiceImpl implements RelationService {

    //Status types
    private static final String WAITING = "WAITING";
    private static final String ACCEPTED = "ACCEPTED";
    private static final String DENIED = "DENIED";

    // Relation types
    private static final String FRIEND = "FRIEND";
    private static final String FOLLOWER = "FOLLOWER";

    @Autowired
    private RelationDAO relationDAO;


    @Override
    public void addFriend(Relationship friendship) {
        friendship.setStatus(WAITING);
        friendship.setType(FOLLOWER);
        relationDAO.addFriend(friendship);
    }
}
