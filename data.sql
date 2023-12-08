use mydb;

-- ------------------------
INSERT INTO `suppliers` (`supplier_id`, `supplier_name`) VALUES
('SUPP001', 'Samsung'),
('SUPP002', 'Apple'),
('SUPP003', 'Sony'),
('SUPP004', 'LG'),
('SUPP005', 'Lenovo'),
('SUPP006', 'Intel'),
('SUPP007', 'Microsoft'),
('SUPP008', 'Panasonic'),
('SUPP009', 'HP'),
('SUPP010', 'Dell'),
('SUPP011', 'Toshiba'),
('SUPP012', 'Asus'),
('SUPP013', 'Acer'),
('SUPP014', 'IBM'),
('SUPP015', 'Canon'),
('SUPP016', 'Nikon'),
('SUPP017', 'Fujifilm'),
('SUPP018', 'Olympus'),
('SUPP019', 'Sharp'),
('SUPP020', 'Philips'),
('SUPP021', 'Akko');

--
INSERT INTO `category` VALUES
('Cate001', 'Điện thoại di động'),
('Cate002', 'Gaming Gear'),
('Cate003', 'Bàn phím'),
('Cate004', 'Màn hình'),
('Cate005', 'Thiết bị mạng'),
('Cate006', 'Tai nghe'),
('Cate007', 'Tablet'),
('Cate008', 'Đồ điện tử gia dụng'),
('Cate009', 'Máy tính đồng bộ'),
('Cate010', 'Laptop'),
('Cate011', 'Phụ kiện công nghệ');
Insert into `category` VALUES
('Cate012', 'Laptop');
--
INSERT INTO `products` (`product_id`, `name_pr`, `name_serial`, `detail`, `price`, `quantity_pr`, `guarantee_period`, `supplier_id`) VALUES
('ABC123', 'Samsung Galaxy S21', 'GA007', '6.2-inch display, 12GB RAM, 256GB storage, 64MP camera', 12000000, 50, 12, 'SUPP001'),
('ACER001', 'Acer Aspire TC-895-UA92', 'ACER001', 'Intel Core i5-10400, 12GB RAM, 512GB SSD, Windows 10 Home', 11000000, 25, 12, 'SUPP002'),
('AKG001', 'AKG Y500 Wireless', 'AKG001', 'On-ear headphones, Bluetooth 4.2, multipoint connection', 3000000, 30, 12, 'SUPP002'),
('AKKB001', 'AKKO 3108 V2 Stars Mechanical Keyboard', 'AKKB001', 'Cherry MX Brown switches, PBT dye-subbed keycaps, full-size layout', 2500000, 20, 12, 'SUPP021'),
('AKKB002', 'AKKO 3068 Silent Mechanical Keyboard', 'AKKB002', 'Cherry MX Silent Red switches, PBT dye-subbed keycaps, compact 68-key layout', 2900000, 15, 12, 'SUPP021'),
('AKKB003', 'AKKO 3084 Wireless Mechanical Keyboard', 'AKKB003', 'Cherry MX Red switches, PBT dye-subbed keycaps, wireless connectivity', 3300000, 10, 12, 'SUPP021'),
('AKKB004', 'AKKO Royale Ocean Star Mechanical Keyboard', 'AKKB004', 'Custom design based on the ocean and stars, Cherry MX Brown switches, PBT dye-subbed keycaps, full-size layout', 3500000, 10, 12, 'SUPP021'),
('ANKI001', 'Anker Wireless Charger', 'ANKI001', '10W fast charging pad, compatible with iPhone and Samsung devices', 500000, 30, 6, 'SUPP007'),
('ASUS001', 'ASUS ProArt PA32UCX-K', 'AS3201', '32-inch 4K HDR professional monitor, Mini LED technology, Thunderbolt 3', 50000000, 10, 24, 'SUPP003'),
('ASUS002', 'ASUS RT-AX3000 Wireless Router', 'ASUS002', 'Dual band 3000Mbps Wi-Fi, 4 Gigabit LAN ports, support for AiMesh mesh network', 3500000, 10, 12, 'SUPP012'),
('BCD890', 'Nokia 8.3 5G', 'N8G02', '6.81-inch IPS LCD display, 6GB RAM, 128GB storage, 64MP camera', 7500000, 40, 12, 'SUPP005'),
('BELK001', 'Belkin Lightning to USB Cable', 'BELK001', '3ft cable length, fast charging and data transfer for iOS devices', 200000, 50, 6, 'SUPP009'),
('CDE567', 'Meizu 18 Pro', 'M1802', '6.7-inch Super AMOLED display, 8GB RAM, 256GB storage, 50MP camera', 12000000, 35, 12, 'SUPP004'),
('DEF456', 'Apple iPhone 12 Pro', 'IP032', '6.1-inch Super Retina XDR display, 6GB RAM, 128GB storage, 12MP camera', 16000000, 30, 12, 'SUPP002'),
('DEL001', 'Dell Optiplex 3080', 'DEL001', 'Intel Core i5-10500, 8GB RAM, 256GB SSD, Windows 10 Pro', 12000000, 20, 12, 'SUPP001'),
('EFG123', 'Asus ROG Phone 5', 'ARP045', '6.78-inch AMOLED display, 12GB RAM, 256GB storage, 64MP camera', 17000000, 20, 12, 'SUPP001'),
('FGH890', 'Poco X3 Pro', 'PX302', '6.67-inch IPS LCD display, 8GB RAM, 128GB storage, 48MP camera', 8000000, 45, 12, 'SUPP005'),
('GHI789', 'OnePlus 9 Pro', 'OP012', '6.7-inch Fluid Display 2.0, 8GB RAM, 128GB storage, 48MP camera', 9000000, 40, 12, 'SUPP003'),
('HIJ456', 'BlackBerry KEY2', 'BBK027', '4.5-inch IPS LCD display, 6GB RAM, 64GB storage, 12MP camera', 8500000, 15, 12, 'SUPP002'),
('HP001', 'HP ProDesk 400 G6', 'HP001', 'Intel Core i3-10100, 4GB RAM, 1TB HDD, Windows 10 Pro', 9000000, 30, 12, 'SUPP003'),
('HUAWEI001', 'Huawei MatePad Pro', 'HUAWEI001', '10.8-inch OLED display, Kirin 990 chip, M-Pencil compatibility, 128GB storage, Wi-Fi', 12000000, 10, 12, 'SUPP006'),
('HYPE001', 'HyperX Cloud II Gaming Headset', 'HYPE001', 'Virtual 7.1 surround sound, noise-cancelling microphone, memory foam ear cups', 3000000, 20, 6, 'SUPP015'),
('IPAD001', 'Apple iPad Air 2020', 'IPAD001', '10.9-inch Liquid Retina display, A14 Bionic chip, Touch ID, 64GB storage, Wi-Fi', 14000000, 15, 12, 'SUPP004'),
('JBL001', 'JBL Free X', 'JBL001', 'True wireless earbuds, 24 hours battery life, in-app assistant', 1800000, 40, 12, 'SUPP003'),
('JBL002', 'JBL Flip 5 Waterproof Speaker', 'JBL002', '12 hours of playing time, Bluetooth connectivity, waterproof design', 3000000, 25, 12, 'SUPP008'),
('JKL012', 'Google Pixel 5', 'GP040', '6.0-inch OLED display, 8GB RAM, 128GB storage, 12.2MP camera', 10000000, 20, 12, 'SUPP004'),
('KLM789', 'HTC U12 Plus', 'HTU037', '6.0-inch Super LCD6 display, 6GB RAM, 128GB storage, 12MP camera', 9000000, 25, 12, 'SUPP003'),
('LG001', 'LG UltraGear 27GL850', 'LG2701', '27-inch 1440p gaming monitor, Nano IPS, G-Sync Compatible, 144Hz', 13000000, 35, 24, 'SUPP002'),
('LOGI001', 'Logitech G Pro X Mechanical Gaming Keyboard', 'LOGI001', 'Customizable RGB lighting, removable GX Blue Clicky switches, durable aluminum alloy frame', 4000000, 10, 6, 'SUPP013'),
('MNO345', 'Xiaomi Mi 11', 'XM041', '6.81-inch AMOLED display, 8GB RAM, 256GB storage, 108MP camera', 11000000, 35, 12, 'SUPP005'),
('NETG001', 'NETGEAR GS308E 8-Port Gigabit Ethernet Switch', 'NETG001', '8 gigabit Ethernet ports, QoS for traffic prioritization, easy plug-and-play setup', 1200000, 20, 12, 'SUPP011'),
('NOP012', 'ZTE Axon 30 Ultra', 'ZAU050', '6.67-inch AMOLED display, 8GB RAM, 128GB storage, 64MP camera', 10000000, 35, 12, 'SUPP004'),
('PQR678', 'Sony Xperia 1 III', 'SX030', '6.5-inch 4K HDR OLED display, 12GB RAM, 256GB storage, 12MP camera', 15000000, 25, 12, 'SUPP001'),
('PRD001', 'Dell XPS 13', 'DX010', '13.3-inch FHD display, Intel Core i5, 8GB RAM, 256GB SSD, Windows 10 Pro', 17000000, 20, 12, 'SUPP010'),
('PRD005', 'Apple MacBook Air', 'MA007', '13.3-inch Retina display, Apple M1 chip, 8GB RAM, 256GB SSD, macOS', 17000000, 25, 12, 'SUPP002'),
('QRS345', 'Lenovo Legion Phone Duel', 'LL002', '6.65-inch AMOLED display, 12GB RAM, 256GB storage, 64MP camera', 16000000, 20, 12, 'SUPP005'),
('RAZE001', 'Razer DeathAdder Elite Gaming Mouse', 'RAZE001', '16,000 DPI optical sensor, customizable chroma RGB lighting, mechanical switches', 2000000, 15, 6, 'SUPP014'),
('SAMS001', 'Samsung Odyssey G7', 'SG7001', '32-inch 1440p curved gaming monitor, 240Hz refresh rate, QLED', 25000000, 15, 24, 'SUPP001'),
('SAMS002', 'Samsung Galaxy Tab S6 Lite', 'SAMS002', '10.4-inch TFT display, Exynos 9611 chip, S Pen compatibility, 64GB storage, Wi-Fi', 8000000, 20, 12, 'SUPP005'),
('SHP001', 'Sony WH-1000XM4', 'SNY001', 'Noise-Cancelling, 30 hours battery life, touch controls', 5000000, 20, 12, 'SUPP001'),
('STU901', 'LG Velvet 5G', 'LV015', '6.8-inch OLED display, 6GB RAM, 128GB storage, 48MP camera', 7000000, 45, 12, 'SUPP002'),
('TAB001', 'Samsung Galaxy Tab S7', 'GTS701', '11-inch display, 6GB RAM, 128GB storage, 13 MP camera', 15000000, 10, 12, 'SUPP001'),
('TAB002', 'Apple iPad Air', 'IPA103', '10.9-inch Liquid Retina display, A14 Bionic chip, 4GB RAM, 256GB storage', 17000000, 15, 12, 'SUPP002'),
('TPLI001', 'TP-Link Archer C7 Wireless Router', 'TPLI001', 'Dual band 1750Mbps Wi-Fi, 4 Gigabit LAN ports, USB 2.0 port for storage and sharing', 1900000, 10, 12, 'SUPP010'),
('TUV678', 'Redmi K40 Pro Plus', 'RK040', '6.67-inch AMOLED display, 8GB RAM, 128GB storage, 108MP camera', 11000000, 30, 12, 'SUPP001'),
('VWX234', 'Motorola Edge Plus', 'ME010', '6.7-inch OLED display, 12GB RAM, 256GB storage, 108MP camera', 13000000, 30, 12, 'SUPP003'),
('WXY901', 'Oppo Find X3 Pro', 'OF031', '6.7-inch AMOLED display, 12GB RAM, 256GB storage, 50MP camera', 14000000, 25, 12, 'SUPP002'),
('YZA567', 'Realme X7 Pro', 'RX024', '6.55-inch AMOLED display, 8GB RAM, 128GB storage, 64MP camera', 8000000, 50, 12, 'SUPP004'),
('ZAB234', 'Vivo iQOO 7', 'VI012', '6.62-inch AMOLED display, 8GB RAM, 128GB storage, 48MP camera', 9000000, 50, 12, 'SUPP003');
INSERT INTO `products` (`product_id`, `name_pr`, `name_serial`, `detail`, `price`, `quantity_pr`, `guarantee_period`, `supplier_id`) VALUES
('ZAB235', 'Vivo iQOO 7', 'VI012', '6.62-inch AMOLED display, 8GB RAM, 128GB storage, 48MP camera', 9000000, 50, 12, 'SUPP003');

INSERT INTO `products` (`product_id`, `name_pr`, `name_serial`, `detail`, `price`, `quantity_pr`, `guarantee_period`, `supplier_id`) VALUES
('DYSA001', 'Dyson Cyclone V10 Absolute Cordless Vacuum Cleaner', 'DYSA001', 'Powerful cordless suction, up to 60 minutes run time, fully sealed filtration system', 12000000, 8, 12, 'SUPP018'),
('AMZD001', 'Amazon Kindle Paperwhite', 'AMZD001', '6-inch glare-free display, adjustable light, waterproof, 8GB storage', 4500000, 8, 12, 'SUPP010'),
('LGWA001', 'LG Top Loading Washing Machine', 'LGWA001', '15kg capacity, inverter direct drive motor, smart diagnosis, steam cleaning function', 16000000, 5, 24, 'SUPP020'),
('IXPC001', 'iXpand USB Drive for iPhone and iPad', 'IXPC001', '64GB storage capacity, lightning and USB 3.0 connectors, easy file transfer', 2500000, 12, 12, 'SUPP002'),
('PANA001', 'Panasonic 4K Ultra HD Smart TV', 'PANA001', '55-inch screen, HDR, Dolby Atmos, built-in WiFi', 18000000, 3, 24, 'SUPP019'),
('PHLA001', 'Philips Smart Air Purifier', 'PHLA001', '4-stage filtration, app control, automatic purification, real-time air quality tracking', 8000000, 10, 12, 'SUPP017'),
('PLCB001', 'Belkin Boost Charge Dual USB-C PD GaN Wall Charger', 'PLCB001', 'Two USB-C PD ports, compact and fast, up to 68W total power output', 2000000, 15, 12, 'SUPP008'),
('SBPB001', 'Samsung Fast Charge Wireless Charging Stand', 'SBPB001', 'Qi certified, fast wireless charging, portrait or landscape orientation, LED indicator', 1500000, 25, 6, 'SUPP001'),
('SMGA001', 'Samsung Side by Side Refrigerator', 'SMGA001', '563L capacity, digital inverter compressor, frost-free, LED lighting', 24000000, 5, 24, 'SUPP016'),
('VRHL001', 'Vr headset for Lang Flatelite 2s only', 'VRHL001', 'Fashion Vr headset for Lang Flatelite 2s only', 1500000, 30, 12, 'SUPP009');
UPDATE image SET image_path = CONCAT('http://127.0.0.1:8000/storage/', image_path);
-- ----
INSERT INTO `product_category` (`category_id`, `product_id`) VALUES
('Cate001', 'ABC123'),
('Cate011', 'ABC123'),
('Cate001', 'DEF456'),
('Cate001', 'GHI789'),
('Cate001', 'CDE567'),
('Cate001', 'EFG123'),
('Cate001', 'FGH890'),
('Cate001', 'HIJ456'),
('Cate001', 'YZA567'),
('Cate001', 'ZAB234'),
('Cate003', 'AKKB001'),
('Cate003', 'AKKB002'),
('Cate003', 'AKKB003'),
('Cate003', 'AKKB004'),
('Cate005', 'ANKI001'),
('Cate012', 'ACER001'),
('Cate012', 'QRS345'),
('Cate012', 'DEL001'),
('Cate012', 'PRD001'),
('Cate007', 'HUAWEI001'),
('Cate007', 'IPAD001'),
('Cate007', 'TAB001');


-- ---------------------------------------------
alter table `discounts`
add column `discount_date_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' after `discount_date`;
alter table `discounts`
drop column `discount_date_to`;

INSERT INTO `discounts` (`discount_id`, `discount_code`, `discount_amount`, `discount_date`, `discount_date_to`) VALUES
('1', 'SUMMER10', 10, '2023-06-01 00:00:00', '2023-06-30 23:59:59'),
('2', 'FALL20', 20, '2023-09-01 00:00:00', '2023-09-30 23:59:59'),
('3', 'WINTER30', 30, '2024-12-01 00:00:00', '2023-12-31 23:59:59'),
('4', 'SPRING15', 15, '2024-03-01 00:00:00', '2024-03-31 23:59:59'),
('5', 'SALE25', 25, '2023-01-01 00:00:00', '2023-01-31 23:59:59');


-- -------------------------------------------

-- INSERT INTO `category` VALUES
-- (1, 'IPHONE'),
-- (2, 'IPAD');


-- ---------------------------------------------
SET SQL_SAFE_UPDATES = 0; 
Delete FROM suppliers;
delete from image;
delete from category;
delete from products;
delete from product_category;
DELETE FROM user;
commit
--
