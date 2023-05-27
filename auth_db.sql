CREATE TABLE `users` (`id` int(11) NOT NULL,
                                   `name` varchar(255) DEFAULT NULL,
                                                               `email` varchar(255) DEFAULT NULL,
                                                                                            `password` varchar(255) DEFAULT NULL,
                                                                                                                            `refresh_token` text DEFAULT NULL,
                                                                                                                                                         `createdAt` datetime NOT NULL,
                                                                                                                                                                              `updatedAt` datetime NOT NULL) ENGINE=InnoDB DEFAULT
CHARSET=latin1;


ALTER TABLE `users` ADD PRIMARY KEY (`id`);


ALTER TABLE `users` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
                                                 AUTO_INCREMENT=3;


COMMIT;