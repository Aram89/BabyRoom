package org.proffart.babyroom.domain.users;

import org.proffart.babyroom.domain.User;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 * @author Aram Kirakosyan.
 *
 * Domain class for parents.
 */
@Entity
@Table(name = "parent")
@PrimaryKeyJoinColumn(name = "userId")
public class Parent extends User{
}
