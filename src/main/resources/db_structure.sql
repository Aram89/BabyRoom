DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS files;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS actions;
DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS nanny;
DROP TABLE IF EXISTS children;
DROP TABLE IF EXISTS parents;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS users;



CREATE TABLE `users` (
  `usersId` INT(11) NOT NULL AUTO_INCREMENT,
  `login` CHAR(50) NOT NULL,
  `email` CHAR(50) NOT NULL,
  `passwordSalt` VARCHAR(64) NOT NULL,
  `passwordHash` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(50) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `gender` ENUM('MALE', 'FEMALE') NOT NULL,
  `countryCode` CHAR(2),
  `cityId` INT(11),
  `status` ENUM('ACTIVE', 'INACTIVE', 'BLOCKED', 'DELETED') NOT NULL,
  PRIMARY KEY (`usersId`, `login`, `email`),
  UNIQUE INDEX `usersId_UNIQUE` (`usersId` ASC),
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


CREATE TABLE `parents` (
  `parentId` INT(11) NOT NULL,
  PRIMARY KEY (`parentId`),
  UNIQUE INDEX `parentId_UNIQUE` (`parentId` ASC),
  CONSTRAINT `fk_parents_users`
  FOREIGN KEY (`parentId`)
  REFERENCES `users` (`usersId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `children` (
  `childrenId` INT(11) NOT NULL,
  `parentId` INT(11) NOT NULL,
  PRIMARY KEY (`childrenId`, `parentId`),
  UNIQUE INDEX `childrenId_UNIQUE` (`childrenId` ASC),
  UNIQUE INDEX `parentId_UNIQUE` (`parentId` ASC),
  CONSTRAINT `fk_children_users`
  FOREIGN KEY (`childrenId`)
  REFERENCES `users` (`usersId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `nanny` (
  `nannyId` INT(11) NOT NULL,
  PRIMARY KEY (`nannyId`),
  UNIQUE INDEX `nannyId_UNIQUE` (`nannyId` ASC),
  CONSTRAINT `fk_nanny_users`
  FOREIGN KEY (`nannyId`)
  REFERENCES `users` (`usersId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `doctors` (
  `doctorId` INT(11) NOT NULL,
  PRIMARY KEY (`doctorId`),
  UNIQUE INDEX `doctorId_UNIQUE` (`doctorId` ASC),
  CONSTRAINT `fk_doctor_users`
  FOREIGN KEY (`doctorId`)
  REFERENCES `users` (`usersId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `actions` (
  `actionId` INT(11) NOT NULL AUTO_INCREMENT,
  `createDate` DATETIME NOT NULL,
  `userId` INT(11) NOT NULL,
  `type` ENUM('POST', 'COMMENT', 'LIKE'),
  PRIMARY KEY (`actionId`),
  UNIQUE INDEX `actionId_UNIQUE` (`actionId` ASC),
  CONSTRAINT `fk_actions_users`
  FOREIGN KEY (`userId`)
  REFERENCES `users` (`usersId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `posts` (
  `postId` INT(11) NOT NULL,
  `content` TEXT NOT NULL,
  `type` ENUM('TEXT', 'IMAGE', 'VIDEO', 'SOUND', 'ALBUM'),
  `status` ENUM('ACTIVE', 'BLOCKED', 'DELETED') NOT NULL,
  PRIMARY KEY (`postId`),
  UNIQUE INDEX `postId_UNIQUE` (`postId` ASC),
  CONSTRAINT `fk_action_post`
  FOREIGN KEY (`postId`)
  REFERENCES `actions` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `comments` (
  `commentId` INT(11) NOT NULL,
  `actionId` INT(11) NOT NULL,
  `content` TEXT NOT NULL,
  PRIMARY KEY (`commentId`, `actionId`),
  UNIQUE INDEX `commentId_UNIQUE` (`commentId` ASC),
  UNIQUE INDEX `actionId_UNIQUE` (`actionId` ASC),
  CONSTRAINT `fk_action_comment`
  FOREIGN KEY (`commentId`)
  REFERENCES `actions` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_comments_actions`
  FOREIGN KEY (`actionId`)
  REFERENCES `actions` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `likes` (
  `likeId` INT(11) NOT NULL,
  `actionId` INT(11) NOT NULL,
  PRIMARY KEY (`likeId`, `actionId`),
  UNIQUE INDEX `likeId_UNIQUE` (`likeId` ASC),
  UNIQUE INDEX `actionId_UNIQUE` (`actionId` ASC),
  CONSTRAINT `fk_action_like`
  FOREIGN KEY (`likeId`)
  REFERENCES `actions` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likes_actions`
  FOREIGN KEY (`actionId`)
  REFERENCES `actions` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `files` (
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
  REFERENCES `actions` (`actionId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `messages` (
  `messageId` INT(11) NOT NULL,
  `date` DATE NOT NULL,
  `time` TIME NOT NULL,
  `from` INT(11) NOT NULL,
  `to` INT(11) NOT NULL,
  `message` TEXT NOT NULL,
  PRIMARY KEY (`messageId`),
  CONSTRAINT `fk_message_form_users`
  FOREIGN KEY (`from`)
  REFERENCES `users` (`usersId`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_message_to_users`
  FOREIGN KEY (`to`)
  REFERENCES `users` (`usersId`)
    ON DELETE CASCADE ON UPDATE CASCADE
);

