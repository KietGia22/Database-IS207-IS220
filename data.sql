use mydb;

DELIMITER //
CREATE TRIGGER before_insert_users
BEFORE INSERT ON user
FOR EACH ROW
SET NEW.create_at = IFNULL(NEW.create_at, NOW());
//


--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(3, 'Khách hàng');

-- 

INSERT INTO `user` (`user_id`, `name`, `email`, `phone`, `password`, `role_id`) VALUES
(1, 'Phạm Thị Tươi', 'tuoipham123@gmail.com', '06767743434',  'tuoipham', 1),
(2, 'Mai Văn Liêu', 'lieumai@gmail.com', '0962298124', 'hello', 3),
(3, 'Mai Hoàng Phúc', 'fdfd@gmail.com', '0874555433', 'phucxautrai', 3),
(4, 'Nguyễn Xuân Trà', 'xuantra@gmail.com', '0962298124', 'xuantra', 3),
(5, 'Trần Minh Tiến', 'aaaa@gmail.com', '09622981247', 'tientran', 3);

--

INSERT INTO `suppliers` VALUES 
(1, 'GEARVN'),
(2, 'Phong Vũ');

--

INSERT INTO `image` (`img_id`) VALUES
(1);

--
INSERT INTO `products` VALUES
(1, 'iPhone 14 Pro Max 128GB màu tím', 'Iphone 14', 6, 128, '1 chiếc điện thoại tuyệt vời', 26790000, 10, 1, 12, 1),
(2, 'iPhone 14 Pro Max 128GB màu vàng', 'Iphone 14', 6, 128, '1 chiếc điện thoại tuyệt vời', 26790000, 10, 1, 12, 1),
(3, 'iPhone 14 Pro Max 128GB màu bạc', 'Iphone 14', 6, 128, '1 chiếc điện thoại tuyệt vời', 26790000, 10, 1, 12, 2),
(4, 'iPhone 14 Pro Max 128GB màu đen', 'Iphone 14', 6, 128, '1 chiếc điện thoại tuyệt vời', 26790000, 10, 1, 12, 2);

INSERT INTO `products` VALUES
(5, 'Ipad', 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', 8, 64, '1 chiếc Ipad tuyệt vời', 14590000, 10, 1, 12, 1);

-- CREATE TABLE `product_category` (
--    `product_id` int(11) NOT NULL,
--    `category_id` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product_category` VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);
INSERT INTO `product_category` VALUES
(5, 2);

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `category` VALUES
(1, 'IPHONE'),
(2, 'IPAD');
