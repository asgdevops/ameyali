CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_type` char(1) NOT NULL,
  `color` varchar(25) NOT NULL,
  `quantity` tinyint NOT NULL,
  `price` float DEFAULT 19.99,
  `total` float DEFAULT 0,
  `cart_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `country` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `postcode` varchar(200) DEFAULT NULL,
  `testing_type` varchar(200) DEFAULT NULL,
  `testing_result` varchar(200) DEFAULT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `name_on_card` varchar(200) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiration` date NOT NULL,
  `cvv` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
