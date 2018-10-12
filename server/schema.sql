DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;
USE chat;

CREATE TABLE `Rooms` (
  `id` INTEGER AUTO_INCREMENT ,
  `RoomName` VARCHAR(30)   ,
  PRIMARY KEY (`id`)
);
    
CREATE TABLE `Users` (
  `id` INTEGER AUTO_INCREMENT ,
  `UserName` VARCHAR(30)   ,
  PRIMARY KEY (`id`)
);
    
CREATE TABLE `Messages` (
  `id` INTEGER AUTO_INCREMENT ,
  `Users` INTEGER,
  `Texts` VARCHAR(30)   ,
  `RoomName` INTEGER   ,
  PRIMARY KEY (`id`)
);

ALTER TABLE `Messages` ADD FOREIGN KEY (Users) REFERENCES `Users` (`id`);
ALTER TABLE `Messages` ADD FOREIGN KEY (RoomName) REFERENCES `Rooms` (`id`);


  -- ALTER TABLE `messages` ADD FOREIGN KEY (users) REFERENCES `users` (`user_id`);
  -- ALTER TABLE `messages` ADD FOREIGN KEY (rooms) REFERENCES `rooms` (`room_id`);

-- ALTER TABLE `Messages` ADD FOREIGN KEY (users_id) REFERENCES `Users` (`user_id`);
-- ALTER TABLE Messages ADD FOREIGN KEY (Room Name) REFERENCES `Rooms` (`room_id`);

/* Create other tables and define schemas for them here! */


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

