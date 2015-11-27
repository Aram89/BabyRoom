package org.proffart.kindernet.model.user;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 * @author Aram Kirakosyan.
 */
@Entity
@PrimaryKeyJoinColumn(name = "expertId")
public class Expert extends User {

    /**
     * No-arg constructor.
     */
    public Expert(){

    }
}
