INSERT INTO category (category_id, category_name) VALUES
('1aNbC3dEfGhIjKpO', 'All'),
('qRsTuV4wXyZ56789', 'Laptop'),
('0PbC1aL2mN3oPqRs', 'Điện thoại di động'),
('4dEfGhI5jKp6mNoP', 'Tablet'),
('7qRsTuVwXyZ56789', 'Đồ điện tử gia dụng'),
('x0bC1a2L3mN3oPqR', 'Phụ kiện công nghệ'),
('9dEfGhIjKp6mN7oP', 'Máy tính đồng bộ'),
('2qRsT3uVwXyZ5678', 'Gaming Gear'),
('4dEfG6hIjKp7oP8q', 'Thiết bị mạng');


INSERT INTO `supplier`(`supplier_id`, `supplier_name`) VALUES 
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
('SUPLLIER020', 'Philips'); 


INSERT INTO product (product_id, name_pr, name_serial, detail, price, quantity_pr, guarantee_period, supplier_id)
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

INSERT INTO image(image_id, product_id, image_href) 
VALUES 
('ABC123001', 'ABC123', 'https://localhost:7067/Upload/product/ABC123/ABC123_1.jpg'),
('ABC123002', 'ABC123', 'https://localhost:7067/Upload/product/ABC123/ABC123_2.jpg')


