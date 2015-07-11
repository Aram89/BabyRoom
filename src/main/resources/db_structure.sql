DROP TABLE IF EXISTS `message`;
DROP TABLE IF EXISTS `file`;
DROP TABLE IF EXISTS `like`;
DROP TABLE IF EXISTS `comment`;
DROP TABLE IF EXISTS `post`;
DROP TABLE IF EXISTS `action`;
DROP TABLE IF EXISTS `seller`;
DROP TABLE IF EXISTS `expert`;
DROP TABLE IF EXISTS `children`;
DROP TABLE IF EXISTS `parent`;
DROP TABLE IF EXISTS `city`;
DROP TABLE IF EXISTS `country`;
DROP TABLE IF EXISTS `user`;



CREATE TABLE `user` (
  `userId` INT(11) NOT NULL AUTO_INCREMENT,
  `login` CHAR(50) NOT NULL,
  `email` CHAR(50) NOT NULL,
  `passwordHash` VARCHAR(64) NOT NULL,
  `firstName` VARCHAR(50) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `gender` ENUM('MALE', 'FEMALE') NOT NULL,
  `countryCode` CHAR(2),
  `cityId` INT(11),
  `status` ENUM('ACTIVE', 'INACTIVE', 'BLOCKED', 'DELETED') NOT NULL,
  `type` ENUM('PARENT', 'CHILDREN', 'expert', 'seller') NOT NULL,
  PRIMARY KEY (`userId`, `login`, `email`),
  UNIQUE INDEX `userId_UNIQUE` (`userId` ASC),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)
);

CREATE TABLE `country` (
  `code` CHAR(2) NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC)
);

CREATE TABLE `city` (
  `cityId` INT(11) NOT NULL AUTO_INCREMENT,
  `countryCode` CHAR(2) NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`cityId`,`countryCode`),
  UNIQUE INDEX `cityId_UNIQUE` (`cityId` ASC)
);


CREATE TABLE `parent` (
  `parentId` INT(11) NOT NULL,
  PRIMARY KEY (`parentId`),
  UNIQUE INDEX `parentId_UNIQUE` (`parentId` ASC),
  CONSTRAINT `fk_parent_user`
  FOREIGN KEY (`parentId`)
  REFERENCES `user` (`userId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `children` (
  `childrenId` INT(11) NOT NULL,
  `parentId` INT(11) NOT NULL,
  PRIMARY KEY (`childrenId`),
  UNIQUE INDEX `childrenId_UNIQUE` (`childrenId` ASC),
  CONSTRAINT `fk_children_user`
  FOREIGN KEY (`childrenId`)
  REFERENCES `user` (`userId`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_children_parent`
  FOREIGN KEY (`parentId`)
  REFERENCES `parent` (`parentId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `expert` (
  `expertId` INT(11) NOT NULL,
  PRIMARY KEY (`expertId`),
  UNIQUE INDEX `expertId_UNIQUE` (`expertId` ASC),
  CONSTRAINT `fk_expert_user`
  FOREIGN KEY (`expertId`)
  REFERENCES `user` (`userId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `seller` (
  `sellerId` INT(11) NOT NULL,
  PRIMARY KEY (`sellerId`),
  UNIQUE INDEX `sellerId_UNIQUE` (`sellerId` ASC),
  CONSTRAINT `fk_seller_user`
  FOREIGN KEY (`sellerId`)
  REFERENCES `user` (`userId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `action` (
  `actionId` INT(11) NOT NULL AUTO_INCREMENT,
  `createDate` DATETIME NOT NULL,
  `userId` INT(11) NOT NULL,
  `type` ENUM('POST', 'COMMENT', 'LIKE'),
  PRIMARY KEY (`actionId`),
  UNIQUE INDEX `actionId_UNIQUE` (`actionId` ASC),
  CONSTRAINT `fk_action_user`
  FOREIGN KEY (`userId`)
  REFERENCES `user` (`userId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `post` (
  `postId` INT(11) NOT NULL,
  `content` TEXT NOT NULL,
  `type` ENUM('TEXT', 'IMAGE', 'VIDEO', 'SOUND', 'ALBUM'),
  `status` ENUM('ACTIVE', 'BLOCKED', 'DELETED') NOT NULL,
  PRIMARY KEY (`postId`),
  UNIQUE INDEX `postId_UNIQUE` (`postId` ASC),
  CONSTRAINT `fk_action_post`
  FOREIGN KEY (`postId`)
  REFERENCES `action` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `comment` (
  `commentId` INT(11) NOT NULL,
  `actionId` INT(11) NOT NULL,
  `content` TEXT NOT NULL,
  PRIMARY KEY (`commentId`, `actionId`),
  UNIQUE INDEX `commentId_UNIQUE` (`commentId` ASC),
  UNIQUE INDEX `actionId_UNIQUE` (`actionId` ASC),
  CONSTRAINT `fk_action_comment`
  FOREIGN KEY (`commentId`)
  REFERENCES `action` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_comment_action`
  FOREIGN KEY (`actionId`)
  REFERENCES `action` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `like` (
  `likeId` INT(11) NOT NULL,
  `actionId` INT(11) NOT NULL,
  PRIMARY KEY (`likeId`, `actionId`),
  UNIQUE INDEX `likeId_UNIQUE` (`likeId` ASC),
  UNIQUE INDEX `actionId_UNIQUE` (`actionId` ASC),
  CONSTRAINT `fk_action_like`
  FOREIGN KEY (`likeId`)
  REFERENCES `action` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_like_action`
  FOREIGN KEY (`actionId`)
  REFERENCES `action` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `file` (
  `fileId` INT(11) NOT NULL,
  `type` ENUM('IMAGE', 'VIDEO', 'SOUND', 'DOC') NOT NULL,
  `mimeType` CHAR(30) NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  `systemName` CHAR(15) NOT NULL,
  `path` VARCHAR(255) NOT NULL,
  `externalURl` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`fileId`),
  UNIQUE INDEX `fileId_UNIQUE` (`fileId` ASC),
  CONSTRAINT `fk_action_file`
  FOREIGN KEY (`fileId`)
  REFERENCES `action` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `message` (
  `messageId` INT(11) NOT NULL,
  `date` DATE NOT NULL,
  `time` TIME NOT NULL,
  `from` INT(11) NOT NULL,
  `to` INT(11) NOT NULL,
  `message` TEXT NOT NULL,
  PRIMARY KEY (`messageId`),
  CONSTRAINT `fk_message_form_user`
  FOREIGN KEY (`from`)
  REFERENCES `user` (`userId`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_message_to_user`
  FOREIGN KEY (`to`)
  REFERENCES `user` (`userId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

