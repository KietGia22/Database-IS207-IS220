drop database CSharpDB;

create database CSharpDB;
use CSharpDB;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";






CREATE TABLE `cart` (
  `user_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `cart` (`user_id`, `product_id`, `quantity`) VALUES
('001', 'AKG001', 1),
('001', 'HUAWEI001', 1),
('001', 'IPAD001', 1),
('001', 'NOP012', 4),
('001', 'PQR678', 1),
('00141cb7-551b-4f34-98de-f2ed58cd53e8', 'DEF456', 1),
('002', 'JKL012', 3);



CREATE TABLE `category` (
  `category_id` varchar(36) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `category` (`category_id`, `category_name`) VALUES
('0PbC1aL2mN3oPqRs', 'Điện thoại di động'),
('2qRsT3uVwXyZ5678', 'Gaming Gear'),
('4d2229zzjv37oP8q', 'Bàn phím'),
('4d2fG9zIjv37oP8q', 'Màng hình'),
('4dEfG6hIjKp7oP8q', 'Thiết bị mạng'),
('4dEfG6zIjvp7oP8q', 'Tai nghe'),
('4dEfGhI5jKp6mNoP', 'Tablet'),
('7qRsTuVwXyZ56789', 'Đồ điện tử gia dụng'),
('9dEfGhIjKp6mN7oP', 'Máy tính đồng bộ'),
('qRsTuV4wXyZ56789', 'Laptop'),
('x0bC1a2L3mN3oPqR', 'Phụ kiện công nghệ');



CREATE TABLE `detail_order` (
  `order_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `price_pr` bigint(20) UNSIGNED NOT NULL,
  `quantity_pr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `detail_order` (`order_id`, `product_id`, `price_pr`, `quantity_pr`) VALUES
('ORDER001', 'ABC123', 12000000, 2),
('ORDER001', 'DEF456', 16000000, 1),
('ORDER001', 'JKL012', 10000000, 3),
('ORDER002', 'ABC123', 12000000, 1),
('ORDER002', 'DEF456', 16000000, 2),
('ORDER003', 'ABC123', 12000000, 1),
('ORDER003', 'DEF456', 16000000, 1),
('ORDER003', 'JKL012', 10000000, 1);



CREATE TABLE `discounts` (
  `discount_id` varchar(36) NOT NULL,
  `discount_code` varchar(255) NOT NULL,
  `discount_amount` int(11) NOT NULL,
  `discount_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `discounts` (`discount_id`, `discount_code`, `discount_amount`, `discount_date`) VALUES
('DISCOUNT001', 'SALE20', 2000000, '2023-11-05 03:30:31'),
('DISCOUNT002', 'OFF25', 2500000, '2023-11-05 03:30:31'),
('DISCOUNT003', 'SAVE30', 3000000, '2023-11-05 03:30:31');



CREATE TABLE `image` (
  `image_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `image_href` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `image` (`image_id`, `product_id`, `image_href`) VALUES
('012dabe8-b86b-4b14-98aa-912bfcdc6868', 'MNO345', 'https://localhost:7067/Upload/product/MNO345/MNO345_1.jpeg'),
('1c92ad2b-6f50-4cb6-aae7-30b765c5c3dd', 'WXY901', 'https://localhost:7067/Upload/product/WXY901/WXY901_1.jpg'),
('30048690-04e0-4817-acbd-9181afdf3ad0', 'ZAB234', 'https://localhost:7067/Upload/product/ZAB234/ZAB234_1.jpg'),
('346a7d45-d700-45ef-af45-c4c04c20580b', 'FGH890', 'https://localhost:7067/Upload/product/FGH890/FGH890_1.jpg'),
('491a7c5f-c684-474d-bc58-4f7ef0726c5a', 'AKKB001', 'https://localhost:7067/Upload/product/AKKB001/AKKB001_1.webp'),
('5e18802f-54aa-4b82-9234d6fe969e8', 'IPAD001', 'https://localhost:7067/Upload/product/IPAD001/IPAD001_1.jpg'),
('5e18802f-54aa-4b82-9946-2233e969e8', 'IPAD001', 'https://localhost:7067/Upload/product/IPAD001/IPAD001_3.jpg'),
('5e18802f-54aa-4b82-9946-2e5d6fe969e8', 'IPAD001', 'https://localhost:7067/Upload/product/IPAD001/IPAD001_2.jpg'),
('79aa24e3-8a77-45a8-9f07-62f6ea5850e8', 'NOP012', 'https://localhost:7067/Upload/product/NOP012/NOP012_1.jpg'),
('7a35dbab-bc3f-4238-8583-d728c01bfb9e', 'AKKB004', 'https://localhost:7067/Upload/product/AKKB004/AKKB004_1.jpg'),
('ABC123001', 'ABC123', 'https://localhost:7067/Upload/product/ABC123/ABC123_1.jpg'),
('ABC123002', 'ABC123', 'https://localhost:7067/Upload/product/ABC123/ABC123_2.jpg'),
('ACER001001', 'ACER001', 'https://localhost:7067/Upload/product/ACER001/ACER001_1.jpg'),
('ae614270-6c3e-42c5-8943-f1d91cf90db0', 'YZA567', 'https://localhost:7067/Upload/product/YZA567/YZA567_1.jpg'),
('af48fce9-7e4b-4173-9375-ef537be39176', 'STU901', 'https://localhost:7067/Upload/product/STU901/STU901_1.jpg'),
('AKG001001', 'AKG001', 'https://localhost:7067/Upload/product/AKG001/AKG001_1.jpg'),
('ANKI001001', 'ANKI001', 'https://localhost:7067/Upload/product/ANKI001/ANKI001_1.jpg'),
('ASUS001001', 'ASUS001', 'https://localhost:7067/Upload/product/ASUS001/ASUS001_1.webp'),
('ASUS002001', 'ASUS002', 'https://localhost:7067/Upload/product/ASUS002/ASUS002_1.jpg'),
('b59c0dff-c917-4707-b40f-7709fbf021c9', 'AKKB003', 'https://localhost:7067/Upload/product/AKKB003/AKKB003_1.webp'),
('BCD890001', 'BCD890', 'https://localhost:7067/Upload/product/BCD890/BCD890_1.jpg'),
('bea7896d-da77-4337-9fbe-64eec52fdbf6', 'AKKB002', 'https://localhost:7067/Upload/product/AKKB002/AKKB002_1.jpeg'),
('BELK001001', 'BELK001', 'https://localhost:7067/Upload/product/BELK001/BELK001_1.jpg'),
('c6a949fe-98bf-4feb-88e7-0953c7adde4a', 'VWX234', 'https://localhost:7067/Upload/product/VWX234/VWX234_1.jpg'),
('CDE567001', 'CDE567', 'https://localhost:7067/Upload/product/CDE567/CDE567_1.jpg'),
('d07b06d6-c24e-4b68-b914-57eaf44d6e25', 'KLM789', 'https://localhost:7067/Upload/product/KLM789/KLM789_1.jpg'),
('d2267579-009f-4b83-ace7-c01707c15bbd', 'GHI789', 'https://localhost:7067/Upload/product/GHI789/GHI789_1.jpg'),
('dc69f4b5-1cb3-40ac-817f-df4bd149a7b2', 'TAB002', 'https://localhost:7067/Upload/product/TAB002/TAB002_1.jpg'),
('DEF456001', 'DEF456', 'https://localhost:7067/Upload/product/DEF456/DEF456_1.jpg'),
('DEL001001', 'DEL001', 'https://localhost:7067/Upload/product/DEL001/DEL001_1.jpg'),
('EFG123001', 'EFG123', 'https://localhost:7067/Upload/product/EFG123/EFG123_1.jpeg'),
('FGH890001', 'FGH890', 'https://localhost:7067/Upload/product/FGH890/FGH890_1.jpg'),
('HIJ456001', 'HIJ456', 'https://localhost:7067/Upload/product/HIJ456/HIJ456_1.jpg'),
('HP001001', 'HP001', 'https://localhost:7067/Upload/product/HP001/HP001_1.jpg'),
('HUAWEI001001', 'HUAWEI001', 'https://localhost:7067/Upload/product/HUAWEI001/HUAWEI001_1.jpg'),
('HYPE001001', 'HYPE001', 'https://localhost:7067/Upload/product/HYPE001/HYPE001_1.jpg'),
('JBL001001', 'JBL001', 'https://localhost:7067/Upload/product/JBL001/JBL001_1.jpg'),
('JBL002001', 'JBL002', 'https://localhost:7067/Upload/product/JBL002/JBL002_1.jpg'),
('JKL012001', 'JKL012', 'https://localhost:7067/Upload/product/JKL012/JKL012_1.jpg'),
('LG001001', 'LG001', 'https://localhost:7067/Upload/product/LG001/LG001_1.jpg'),
('LOGI001001', 'LOGI001', 'https://localhost:7067/Upload/product/LOGI001/LOGI001_1.jpg'),
('MNO345001', 'MNO345', 'https://localhost:7067/Upload/product/MNO345/MNO345_1.jpg'),
('NETG001001', 'NETG001', 'https://localhost:7067/Upload/product/NETG001/NETG001_1.jpg'),
('NOP012001', 'NOP012', 'https://localhost:7067/Upload/product/NOP012/NOP012_1.jpg'),
('PQR678001', 'PQR678', 'https://localhost:7067/Upload/product/PQR678/PQR678_1.jpg'),
('PRD001001', 'PRD001', 'https://localhost:7067/Upload/product/PRD001/PRD001_1.jpg'),
('PRD005001', 'PRD005', 'https://localhost:7067/Upload/product/PRD005/PRD005_1.jpg'),
('QRS345001', 'QRS345', 'https://localhost:7067/Upload/product/QRS345/QRS345_1.webp'),
('RAZE001001', 'RAZE001', 'https://localhost:7067/Upload/product/RAZE001/RAZE001_1.jpg'),
('SAMS001001', 'SAMS001', 'https://localhost:7067/Upload/product/SAMS001/SAMS001_1.jpg'),
('SAMS002001', 'SAMS002', 'https://localhost:7067/Upload/product/SAMS002/SAMS002_1.jpg'),
('SHP001001', 'SHP001', 'https://localhost:7067/Upload/product/SHP001/SHP001_1.jpg'),
('TAB001001', 'TAB001', 'https://localhost:7067/Upload/product/TAB001/TAB001_1.jpg'),
('TAB002001', 'TAB002', 'https://localhost:7067/Upload/product/TAB002/TAB002_1.jpg'),
('TPLI001001', 'TPLI001', 'https://localhost:7067/Upload/product/TPLI001/TPLI001_1.jpg'),
('TUV678001', 'TUV678', 'https://localhost:7067/Upload/product/TUV678/TUV678_1.jpg'),
('YZA567001', 'YZA567', 'https://localhost:7067/Upload/product/YZA567/YZA567_1.jpg');



CREATE TABLE `order` (
  `order_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `create_order_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `note` longtext NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `discount` varchar(36) NOT NULL,
  `delivery_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `order` (`order_id`, `user_id`, `create_order_at`, `name`, `email`, `phone`, `address`, `state`, `note`, `total`, `discount`, `delivery_fee`) VALUES
('ORDER001', '001', '2023-11-05 03:30:31', 'John Doe', 'john.doe@example.com', '123456789', '123 Main St, City, Country', 'Pending', 'Special request for delivery', 50000000, 'DISCOUNT001', 20000),
('ORDER002', '00141cb7-551b-4f34-98de-f2ed58cd53e8', '2023-11-05 03:30:31', 'Alice Johnson', 'alice.johnson@example.com', '987654321', '456 Elm St, City, Country', 'Processing', 'No special request', 60000000, 'DISCOUNT002', 25000),
('ORDER003', '002', '2023-11-05 03:30:31', 'Bob Smith', 'bob.smith@example.com', '111111111', '789 Oak St, City, Country', 'Completed', 'Leave at doorstep', 70000000, 'DISCOUNT003', 30000);



CREATE TABLE `product` (
  `product_id` varchar(36) NOT NULL,
  `name_pr` varchar(200) DEFAULT NULL,
  `name_serial` varchar(200) DEFAULT NULL,
  `detail` longtext DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity_pr` int(11) DEFAULT NULL,
  `guarantee_period` int(11) DEFAULT NULL,
  `supplier_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `product` (`product_id`, `name_pr`, `name_serial`, `detail`, `price`, `quantity_pr`, `guarantee_period`, `supplier_id`) VALUES
('ABC123', 'Samsung Galaxy S21', 'GA007', '6.2-inch display, 12GB RAM, 256GB storage, 64MP camera', 12000000, 50, 12, 'SUPLLIER001'),
('ACER001', 'Acer Aspire TC-895-UA92', 'ACER001', 'Intel Core i5-10400, 12GB RAM, 512GB SSD, Windows 10 Home', 11000000, 25, 12, 'SUPLLIER002'),
('AKG001', 'AKG Y500 Wireless', 'AKG001', 'On-ear headphones, Bluetooth 4.2, multipoint connection', 3000000, 30, 12, 'SUPLLIER002'),
('AKKB001', 'AKKO 3108 V2 Stars Mechanical Keyboard', 'AKKB001', 'Cherry MX Brown switches, PBT dye-subbed keycaps, full-size layout', 2500000, 20, 12, 'SUPLLIER021'),
('AKKB002', 'AKKO 3068 Silent Mechanical Keyboard', 'AKKB002', 'Cherry MX Silent Red switches, PBT dye-subbed keycaps, compact 68-key layout', 2900000, 15, 12, 'SUPLLIER021'),
('AKKB003', 'AKKO 3084 Wireless Mechanical Keyboard', 'AKKB003', 'Cherry MX Red switches, PBT dye-subbed keycaps, wireless connectivity', 3300000, 10, 12, 'SUPLLIER021'),
('AKKB004', 'AKKO Royale Ocean Star Mechanical Keyboard', 'AKKB004', 'Custom design based on the ocean and stars, Cherry MX Brown switches, PBT dye-subbed keycaps, full-size layout', 3500000, 10, 12, 'SUPLLIER021'),
('ANKI001', 'Anker Wireless Charger', 'ANKI001', '10W fast charging pad, compatible with iPhone and Samsung devices', 500000, 30, 6, 'SUPLLIER007'),
('ASUS001', 'ASUS ProArt PA32UCX-K', 'AS3201', '32-inch 4K HDR professional monitor, Mini LED technology, Thunderbolt 3', 50000000, 10, 24, 'SUPLLIER003'),
('ASUS002', 'ASUS RT-AX3000 Wireless Router', 'ASUS002', 'Dual band 3000Mbps Wi-Fi, 4 Gigabit LAN ports, support for AiMesh mesh network', 3500000, 10, 12, 'SUPLLIER012'),
('BCD890', 'Nokia 8.3 5G', 'N8G02', '6.81-inch IPS LCD display, 6GB RAM, 128GB storage, 64MP camera', 7500000, 40, 12, 'SUPLLIER005'),
('BELK001', 'Belkin Lightning to USB Cable', 'BELK001', '3ft cable length, fast charging and data transfer for iOS devices', 200000, 50, 6, 'SUPLLIER009'),
('CDE567', 'Meizu 18 Pro', 'M1802', '6.7-inch Super AMOLED display, 8GB RAM, 256GB storage, 50MP camera', 12000000, 35, 12, 'SUPLLIER004'),
('DEF456', 'Apple iPhone 12 Pro', 'IP032', '6.1-inch Super Retina XDR display, 6GB RAM, 128GB storage, 12MP camera', 16000000, 30, 12, 'SUPLLIER002'),
('DEL001', 'Dell Optiplex 3080', 'DEL001', 'Intel Core i5-10500, 8GB RAM, 256GB SSD, Windows 10 Pro', 12000000, 20, 12, 'SUPLLIER001'),
('EFG123', 'Asus ROG Phone 5', 'ARP045', '6.78-inch AMOLED display, 12GB RAM, 256GB storage, 64MP camera', 17000000, 20, 12, 'SUPLLIER001'),
('FGH890', 'Poco X3 Pro', 'PX302', '6.67-inch IPS LCD display, 8GB RAM, 128GB storage, 48MP camera', 8000000, 45, 12, 'SUPLLIER005'),
('GHI789', 'OnePlus 9 Pro', 'OP012', '6.7-inch Fluid Display 2.0, 8GB RAM, 128GB storage, 48MP camera', 9000000, 40, 12, 'SUPLLIER003'),
('HIJ456', 'BlackBerry KEY2', 'BBK027', '4.5-inch IPS LCD display, 6GB RAM, 64GB storage, 12MP camera', 8500000, 15, 12, 'SUPLLIER002'),
('HP001', 'HP ProDesk 400 G6', 'HP001', 'Intel Core i3-10100, 4GB RAM, 1TB HDD, Windows 10 Pro', 9000000, 30, 12, 'SUPLLIER003'),
('HUAWEI001', 'Huawei MatePad Pro', 'HUAWEI001', '10.8-inch OLED display, Kirin 990 chip, M-Pencil compatibility, 128GB storage, Wi-Fi', 12000000, 10, 12, 'SUPLLIER006'),
('HYPE001', 'HyperX Cloud II Gaming Headset', 'HYPE001', 'Virtual 7.1 surround sound, noise-cancelling microphone, memory foam ear cups', 3000000, 20, 6, 'SUPLLIER015'),
('IPAD001', 'Apple iPad Air 2020', 'IPAD001', '10.9-inch Liquid Retina display, A14 Bionic chip, Touch ID, 64GB storage, Wi-Fi', 14000000, 15, 12, 'SUPLLIER004'),
('JBL001', 'JBL Free X', 'JBL001', 'True wireless earbuds, 24 hours battery life, in-app assistant', 1800000, 40, 12, 'SUPLLIER003'),
('JBL002', 'JBL Flip 5 Waterproof Speaker', 'JBL002', '12 hours of playing time, Bluetooth connectivity, waterproof design', 3000000, 25, 12, 'SUPLLIER008'),
('JKL012', 'Google Pixel 5', 'GP040', '6.0-inch OLED display, 8GB RAM, 128GB storage, 12.2MP camera', 10000000, 20, 12, 'SUPLLIER004'),
('KLM789', 'HTC U12 Plus', 'HTU037', '6.0-inch Super LCD6 display, 6GB RAM, 128GB storage, 12MP camera', 9000000, 25, 12, 'SUPLLIER003'),
('LG001', 'LG UltraGear 27GL850', 'LG2701', '27-inch 1440p gaming monitor, Nano IPS, G-Sync Compatible, 144Hz', 13000000, 35, 24, 'SUPLLIER002'),
('LOGI001', 'Logitech G Pro X Mechanical Gaming Keyboard', 'LOGI001', 'Customizable RGB lighting, removable GX Blue Clicky switches, durable aluminum alloy frame', 4000000, 10, 6, 'SUPLLIER013'),
('MNO345', 'Xiaomi Mi 11', 'XM041', '6.81-inch AMOLED display, 8GB RAM, 256GB storage, 108MP camera', 11000000, 35, 12, 'SUPLLIER005'),
('NETG001', 'NETGEAR GS308E 8-Port Gigabit Ethernet Switch', 'NETG001', '8 gigabit Ethernet ports, QoS for traffic prioritization, easy plug-and-play setup', 1200000, 20, 12, 'SUPLLIER011'),
('NOP012', 'ZTE Axon 30 Ultra', 'ZAU050', '6.67-inch AMOLED display, 8GB RAM, 128GB storage, 64MP camera', 10000000, 35, 12, 'SUPLLIER004'),
('PQR678', 'Sony Xperia 1 III', 'SX030', '6.5-inch 4K HDR OLED display, 12GB RAM, 256GB storage, 12MP camera', 15000000, 25, 12, 'SUPLLIER001'),
('PRD001', 'Dell XPS 13', 'DX010', '13.3-inch FHD display, Intel Core i5, 8GB RAM, 256GB SSD, Windows 10 Pro', 17000000, 20, 12, 'SUPLLIER010'),
('PRD005', 'Apple MacBook Air', 'MA007', '13.3-inch Retina display, Apple M1 chip, 8GB RAM, 256GB SSD, macOS', 17000000, 25, 12, 'SUPLLIER002'),
('QRS345', 'Lenovo Legion Phone Duel', 'LL002', '6.65-inch AMOLED display, 12GB RAM, 256GB storage, 64MP camera', 16000000, 20, 12, 'SUPLLIER005'),
('RAZE001', 'Razer DeathAdder Elite Gaming Mouse', 'RAZE001', '16,000 DPI optical sensor, customizable chroma RGB lighting, mechanical switches', 2000000, 15, 6, 'SUPLLIER014'),
('SAMS001', 'Samsung Odyssey G7', 'SG7001', '32-inch 1440p curved gaming monitor, 240Hz refresh rate, QLED', 25000000, 15, 24, 'SUPLLIER001'),
('SAMS002', 'Samsung Galaxy Tab S6 Lite', 'SAMS002', '10.4-inch TFT display, Exynos 9611 chip, S Pen compatibility, 64GB storage, Wi-Fi', 8000000, 20, 12, 'SUPLLIER005'),
('SHP001', 'Sony WH-1000XM4', 'SNY001', 'Noise-Cancelling, 30 hours battery life, touch controls', 5000000, 20, 12, 'SUPLLIER001'),
('STU901', 'LG Velvet 5G', 'LV015', '6.8-inch OLED display, 6GB RAM, 128GB storage, 48MP camera', 7000000, 45, 12, 'SUPLLIER002'),
('TAB001', 'Samsung Galaxy Tab S7', 'GTS701', '11-inch display, 6GB RAM, 128GB storage, 13 MP camera', 15000000, 10, 12, 'SUPLLIER001'),
('TAB002', 'Apple iPad Air', 'IPA103', '10.9-inch Liquid Retina display, A14 Bionic chip, 4GB RAM, 256GB storage', 17000000, 15, 12, 'SUPLLIER002'),
('TPLI001', 'TP-Link Archer C7 Wireless Router', 'TPLI001', 'Dual band 1750Mbps Wi-Fi, 4 Gigabit LAN ports, USB 2.0 port for storage and sharing', 1900000, 10, 12, 'SUPLLIER010'),
('TUV678', 'Redmi K40 Pro Plus', 'RK040', '6.67-inch AMOLED display, 8GB RAM, 128GB storage, 108MP camera', 11000000, 30, 12, 'SUPLLIER001'),
('VWX234', 'Motorola Edge Plus', 'ME010', '6.7-inch OLED display, 12GB RAM, 256GB storage, 108MP camera', 13000000, 30, 12, 'SUPLLIER003'),
('WXY901', 'Oppo Find X3 Pro', 'OF031', '6.7-inch AMOLED display, 12GB RAM, 256GB storage, 50MP camera', 14000000, 25, 12, 'SUPLLIER002'),
('YZA567', 'Realme X7 Pro', 'RX024', '6.55-inch AMOLED display, 8GB RAM, 128GB storage, 64MP camera', 8000000, 50, 12, 'SUPLLIER004'),
('ZAB234', 'Vivo iQOO 7', 'VI012', '6.62-inch AMOLED display, 8GB RAM, 128GB storage, 48MP camera', 9000000, 50, 12, 'SUPLLIER003');



CREATE TABLE `product_category` (
  `product_id` varchar(36) NOT NULL,
  `category_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
('ABC123', '0PbC1aL2mN3oPqRs'),
('ACER001', '9dEfGhIjKp6mN7oP'),
('AKG001', '4dEfG6zIjvp7oP8q'),
('AKKB001', '4d2229zzjv37oP8q'),
('AKKB002', '4d2229zzjv37oP8q'),
('AKKB003', '4d2229zzjv37oP8q'),
('AKKB004', '4d2229zzjv37oP8q'),
('ANKI001', 'x0bC1a2L3mN3oPqR'),
('ASUS001', '4d2fG9zIjv37oP8q'),
('ASUS002', '4dEfG6hIjKp7oP8q'),
('BCD890', '0PbC1aL2mN3oPqRs'),
('BELK001', 'x0bC1a2L3mN3oPqR'),
('CDE567', '0PbC1aL2mN3oPqRs'),
('DEF456', '0PbC1aL2mN3oPqRs'),
('DEL001', '9dEfGhIjKp6mN7oP'),
('EFG123', 'qRsTuV4wXyZ56789'),
('FGH890', 'qRsTuV4wXyZ56789'),
('GHI789', '0PbC1aL2mN3oPqRs'),
('HIJ456', 'qRsTuV4wXyZ56789'),
('HP001', '9dEfGhIjKp6mN7oP'),
('HUAWEI001', '4dEfGhI5jKp6mNoP'),
('HYPE001', '2qRsT3uVwXyZ5678'),
('IPAD001', '4dEfGhI5jKp6mNoP'),
('JBL001', '4dEfG6zIjvp7oP8q'),
('JBL002', 'x0bC1a2L3mN3oPqR'),
('JKL012', '0PbC1aL2mN3oPqRs'),
('KLM789', 'qRsTuV4wXyZ56789'),
('LG001', '4d2fG9zIjv37oP8q'),
('LOGI001', '2qRsT3uVwXyZ5678'),
('MNO345', '0PbC1aL2mN3oPqRs'),
('NETG001', '4dEfG6hIjKp7oP8q'),
('NOP012', '0PbC1aL2mN3oPqRs'),
('PQR678', '0PbC1aL2mN3oPqRs'),
('PRD001', 'qRsTuV4wXyZ56789'),
('PRD005', 'qRsTuV4wXyZ56789'),
('QRS345', '2qRsT3uVwXyZ5678'),
('RAZE001', '2qRsT3uVwXyZ5678'),
('SAMS001', '4d2fG9zIjv37oP8q'),
('SAMS002', '4dEfGhI5jKp6mNoP'),
('SHP001', '4dEfG6zIjvp7oP8q'),
('STU901', '0PbC1aL2mN3oPqRs'),
('TAB001', '4dEfGhI5jKp6mNoP'),
('TAB002', '4dEfGhI5jKp6mNoP'),
('TPLI001', '4dEfG6hIjKp7oP8q'),
('TUV678', '0PbC1aL2mN3oPqRs'),
('VWX234', '0PbC1aL2mN3oPqRs'),
('WXY901', '0PbC1aL2mN3oPqRs'),
('YZA567', '0PbC1aL2mN3oPqRs'),
('ZAB234', '0PbC1aL2mN3oPqRs');



CREATE TABLE `supplier` (
  `supplier_id` varchar(36) NOT NULL,
  `supplier_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `supplier` (`supplier_id`, `supplier_name`) VALUES
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
('SUPLLIER021', 'Akko');



CREATE TABLE `traffic_user` (
  `user_id` varchar(36) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `user` (
  `user_id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `isAdmin` varchar(1) NOT NULL,
  `create_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `user` (`user_id`, `name`, `email`, `phone`, `password`, `isAdmin`, `create_at`) VALUES
('001', 'Cao Hoài Sang', 'Sang@gmail.com', '0944552050', '$2a$11$/VyLbThx9mdMq1AXmqhSpuDQcEQOn0Q3IcQH04mfksGgbBE4MgBsS', '1', '2023-11-03 22:35:56'),
('00141cb7-551b-4f34-98de-f2ed58cd53e8', 'sang', 's@gmail.com', '666', '$2a$11$IPK.XFdJYo3FewzFJs0lfeld995B5LUMmgzwT9v1OqUkk6WGFm2SO', '0', '0000-00-00 00:00:00'),
('002', 'Sang02', 'Sang@gmail.com', '0242340923', '$2a$11$xXk6B9upbLBviCUFCBGdHeLBqE6zQbUf4V.iTdaWdl4vhRxW19RCi', '1', '2023-11-03 22:35:56'),
('003', 'Sang03', 'Sang@gmail.com', '0242240923', '$2a$11$KFa5zKXBexc/8BotgiSTR.w3CridjlJJXXcJerRxcdwdWQXZ1hPq.', '1', '2023-11-03 22:35:56'),
('004', 'Sang04', 'Sang@gmail.com', '024224099', '$2a$11$jcFx3wuvH1LsvGXc9lwhfugf6x9U6d8Q.faj6/zgoOTJSkTYf0.tO', '1', '2023-11-03 22:35:56'),
('005', 'Sang05', 'Sang@gmail.com', '024824099', '$2a$11$Uqmp6HhHbjEEsen7ppb8AuYDK7KedC8FYJsdA5ixODnLbCeCDJ7Om', '1', '2023-11-03 22:35:56'),
('006', 'Sang06', 'Sang@gmail.com', '0242240749', '$2a$11$Ww6859.at9W5MZonU5x0L.PV5LSULgD3MCYygrcqLWroLVK7v/FvO', '1', '2023-11-03 22:35:56'),
('01dc0721-8ffe-457a-8d0a-286753af0601', 'dark', 'dark@gmail.com', '12', '$2a$11$26dcZ0S.zJgM7xjXR1bqi.uhVbd1mz/9tM1IEVwHFYdIfokm929Cu', '0', '0000-00-00 00:00:00'),
('4e45af55-ea78-4055-8bee-0548a3fdc25f', 'Sang', 'hoaisang@gmail.com', '666', '$2a$11$e68lcpz.7lOh56WEBM8lrOG8ann.kAvmQSamUmqSpy.bGjWk1GVM.', '0', '0000-00-00 00:00:00'),
('56e12d60-db31-4926-bde7-f390d4486346', 'darkvai', 'darkqua@gmail.com', '1', '$2a$11$JVdQ76OAzGQmm2WtnSuvpuu737CocpfVwf7NUIGeq43kIR6ICB7sK', '0', '0000-00-00 00:00:00'),
('a0712410-5e69-470c-a025-7d2c011e9994', 'dark', 'dark@gmail.com', '333', '$2a$11$U7eixALDKzLxZEImV.uYX.X8s/uVReFd6of5W9.P0T1CasuMj9d6O', '0', '0000-00-00 00:00:00'),
('b62dbd65-679c-437f-9fea-7c81d9566eb6', 'Sang', 'hoaisang@gmail.com', '666', '$2a$11$kW0w293s5DAb1G0PJbXG/.U9AS.ZiZyG/AC1R2T8OI7oWsZWvWhje', '0', '0000-00-00 00:00:00'),
('bc13ee03-1a69-40f2-94a9-2735c11b9f40', 'Sang', 'hoaisang@gmail.com', '666', '$2a$11$KIy8tMwDRp1octM7EizkDuVyhIu4o89ta1PnoAR3wM5JWH1oxrHty', '0', '0000-00-00 00:00:00');



CREATE TABLE `wishlist` (
  `product_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `wishlist` (`product_id`, `user_id`) VALUES
('ABC123', '001'),
('DEF456', '001'),
('JKL012', '00141cb7-551b-4f34-98de-f2ed58cd53e8'),
('ABC123', '002'),
('DEF456', '002');


ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `cart_fk2` (`product_id`);

ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `do_fk1` (`product_id`);

ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_fk1` (`user_id`),
  ADD KEY `order_fk3` (`discount`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_fk3` (`supplier_id`);

ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `pc_fk1` (`category_id`);

ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

ALTER TABLE `traffic_user`
  ADD PRIMARY KEY (`user_id`,`time`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wl_fk2` (`product_id`);


ALTER TABLE `cart`
  ADD CONSTRAINT `cart_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_fk2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `detail_order`
  ADD CONSTRAINT `do_fk1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `do_fk2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `order`
  ADD CONSTRAINT `order_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_fk3` FOREIGN KEY (`discount`) REFERENCES `discounts` (`discount_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `product`
  ADD CONSTRAINT `product_fk3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `product_category`
  ADD CONSTRAINT `pc_fk1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pc_fk2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `traffic_user`
  ADD CONSTRAINT `tu_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `wishlist`
  ADD CONSTRAINT `wl1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wl_fk2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


