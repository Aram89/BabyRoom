package org.proffart.babyroom.service;

import org.proffart.babyroom.dao.RelationDAO;
import org.proffart.babyroom.domain.Friendship;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Aram Kirakosyan.
 */
@Transactional
@Service
public class RelationServiceImpl implements RelationService {

    @Autowired
    private RelationDAO relationDAO;


    @Override
    public void addFriend(Friendship friendship) {
        relationDAO.addFriend(friendship);
    }
}
