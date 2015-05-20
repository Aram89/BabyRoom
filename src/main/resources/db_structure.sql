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
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
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
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE `nanny` (
  `nannyId` INT(11) NOT NULL,
  PRIMARY KEY (`nannyId`),
  UNIQUE INDEX `nannyId_UNIQUE` (`nannyId` ASC),
  CONSTRAINT `fk_nanny_users`
  FOREIGN KEY (`nannyId`)
  REFERENCES `users` (`usersId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE `doctors` (
  `doctorId` INT(11) NOT NULL,
  PRIMARY KEY (`doctorId`),
  UNIQUE INDEX `doctorId_UNIQUE` (`doctorId` ASC),
  CONSTRAINT `fk_doctor_users`
  FOREIGN KEY (`doctorId`)
  REFERENCES `users` (`usersId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);


