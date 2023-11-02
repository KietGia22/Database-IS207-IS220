use mydb;

DELIMITER //
CREATE TRIGGER before_insert_users
BEFORE INSERT ON user
FOR EACH ROW
SET NEW.create_at = IFNULL(NEW.create_at, NOW());
//


--
INSERT INTO `suppliers`(`supplier_id`, `supplier_name`) VALUES 
('SUPLLIER001', 'Samsung'),
('SUPLLIER002', 'Apple'),
('SUPLLIER003', 'Sony'),
('SUPLLIER004', 'LG'),
('SUPLLIER005', 'Lenovo'),
('SUPLLIER006', 'Intel'),
('SUPLLIER007', 'Microsoft'),
('SUPLLIER008', 'Panasonic'),
('SUPLLIER009', 'HP'),
('SUPLLIER010', 'Dell'),
('SUPLLIER011', 'Toshiba'),
('SUPLLIER012', 'Asus'),
('SUPLLIER013', 'Acer'),
('SUPLLIER014', 'IBM'),
('SUPLLIER015', 'Canon'),
('SUPLLIER016', 'Nikon'),
('SUPLLIER017', 'Fujifilm'),
('SUPLLIER018', 'Olympus'),
('SUPLLIER019', 'Sharp'),
('SUPLLIER020', 'Philips'),
('SUPPLIER021', 'GEARVN'),
('SUPPLIER022', 'Phong Vũ');
--

INSERT INTO `image` (`img_id`) VALUES
(1);

--
INSERT INTO products (product_id, name_pr, name_serial, detail, price, quantity_pr, guarantee_period, supplier_id)
VALUES 
('ABC123', 'Samsung Galaxy S21', 'GA007', '6.2-inch display, 12GB RAM, 256GB storage, 64MP camera', 12000000, 50, 12, 'SUPLLIER001'),
('DEF456', 'Apple iPhone 12 Pro', 'IP032', '6.1-inch Super Retina XDR display, 6GB RAM, 128GB storage, 12MP camera', 16000000, 30, 12, 'SUPLLIER002'),
('GHI789', 'OnePlus 9 Pro', 'OP012', '6.7-inch Fluid Display 2.0, 8GB RAM, 128GB storage, 48MP camera', 9000000, 40, 12, 'SUPLLIER003'),
('JKL012', 'Google Pixel 5', 'GP040', '6.0-inch OLED display, 8GB RAM, 128GB storage, 12.2MP camera', 10000000, 20, 12, 'SUPLLIER004'),
('MNO345', 'Xiaomi Mi 11', 'XM041', '6.81-inch AMOLED display, 8GB RAM, 256GB storage, 108MP camera', 11000000, 35, 12, 'SUPLLIER005'),
('PQR678', 'Sony Xperia 1 III', 'SX030', '6.5-inch 4K HDR OLED display, 12GB RAM, 256GB storage, 12MP camera', 15000000, 25, 12, 'SUPLLIER001'),
('STU901', 'LG Velvet 5G', 'LV015', '6.8-inch OLED display, 6GB RAM, 128GB storage, 48MP camera', 7000000, 45, 12, 'SUPLLIER002'),
('VWX234', 'Motorola Edge Plus', 'ME010', '6.7-inch OLED display, 12GB RAM, 256GB storage, 108MP camera', 13000000, 30, 12, 'SUPLLIER003'),
('YZA567', 'Realme X7 Pro', 'RX024', '6.55-inch AMOLED display, 8GB RAM, 128GB storage, 64MP camera', 8000000, 50, 12, 'SUPLLIER004'),
('BCD890', 'Nokia 8.3 5G', 'N8G02', '6.81-inch IPS LCD display, 6GB RAM, 128GB storage, 64MP camera', 7500000, 40, 12, 'SUPLLIER005'),
('EFG123', 'Asus ROG Phone 5', 'ARP045', '6.78-inch AMOLED display, 12GB RAM, 256GB storage, 64MP camera', 17000000, 20, 12, 'SUPLLIER001'),
('HIJ456', 'BlackBerry KEY2', 'BBK027', '4.5-inch IPS LCD display, 6GB RAM, 64GB storage, 12MP camera', 8500000, 15, 12, 'SUPLLIER002'),
('KLM789', 'HTC U12 Plus', 'HTU037', '6.0-inch Super LCD6 display, 6GB RAM, 128GB storage, 12MP camera', 9000000, 25, 12, 'SUPLLIER003'),
('NOP012', 'ZTE Axon 30 Ultra', 'ZAU050', '6.67-inch AMOLED display, 8GB RAM, 128GB storage, 64MP camera', 10000000, 35, 12, 'SUPLLIER004'),
('QRS345', 'Lenovo Legion Phone Duel', 'LL002', '6.65-inch AMOLED display, 12GB RAM, 256GB storage, 64MP camera', 16000000, 20, 12, 'SUPLLIER005'),
('TUV678', 'Redmi K40 Pro Plus', 'RK040', '6.67-inch AMOLED display, 8GB RAM, 128GB storage, 108MP camera', 11000000, 30, 12, 'SUPLLIER001'),
('WXY901', 'Oppo Find X3 Pro', 'OF031', '6.7-inch AMOLED display, 12GB RAM, 256GB storage, 50MP camera', 14000000, 25, 12, 'SUPLLIER002'),
('ZAB234', 'Vivo iQOO 7', 'VI012', '6.62-inch AMOLED display, 8GB RAM, 128GB storage, 48MP camera', 9000000, 50, 12, 'SUPLLIER003'),
('CDE567', 'Meizu 18 Pro', 'M1802', '6.7-inch Super AMOLED display, 8GB RAM, 256GB storage, 50MP camera', 12000000, 35, 12, 'SUPLLIER004'),
('FGH890', 'Poco X3 Pro', 'PX302', '6.67-inch IPS LCD display, 8GB RAM, 128GB storage, 48MP camera', 8000000, 45, 12, 'SUPLLIER005');

-- CREATE TABLE `product_category` (
--    `product_id` int(11) NOT NULL,
--    `category_id` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product_category` (`category_id`, `product_id`) VALUES
('CATE001', 'ABC123'),
('CATE001', 'DEF456'),
('CATE001', 'GHI789'),
('CATE002', 'ABC123'),
('CATE002', 'DEF456');

-- -------------------------------------------

-- INSERT INTO `category` VALUES
-- (1, 'IPHONE'),
-- (2, 'IPAD');

INSERT INTO `category` VALUES
('CATE001', 'Điện thoại'),
('CATE002', 'Thịnh hành');
-- ---------------------------------------------
SET SQL_SAFE_UPDATES = 0;
DELETE FROM user 
Delete FROM suppliers
delete from image
delete from category
delete from products
delete from product_category
commit
--
