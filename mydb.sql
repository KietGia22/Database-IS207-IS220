CREATE DATABASE MYDB;

USE MYDB;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2023 lúc 09:01 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `CART` (
  `USER_ID` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PRODUCT_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `QUANTITY` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `CATEGORY` (
  `CATEGORY_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `CATEGORY_NAME` VARCHAR(100) COLLATE UTF8_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_order`
--

CREATE TABLE `DETAIL_ORDER` (
  `ORDER_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PRODUCT_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PRICE_PR` BIGINT(20) UNSIGNED NOT NULL,
  `QUANTITY_PR` INT(11) NOT NULL,
  `WARRANTY PERIOD` VARCHAR(100) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `USER` (
  `USER_ID` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `NAME` VARCHAR(100) COLLATE UTF8_UNICODE_CI NOT NULL,
  `EMAIL` VARCHAR(100) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PHONE` VARCHAR(20) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PASSWORD` VARCHAR(100) COLLATE UTF8_UNICODE_CI NOT NULL,
  `ROLE` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `CREATE_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `IMAGE`(
  `IMG_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  PRODUCT_ID VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  IMAGE_PATH VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `PRODUCTS`(
  `PRODUCT_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `NAME_PR` VARCHAR(200) COLLATE UTF8_UNICODE_CI NOT NULL,
  `NAME_SERIAL` VARCHAR(200) COLLATE UTF8_UNICODE_CI NOT NULL,
  `DETAIL` LONGTEXT COLLATE UTF8_UNICODE_CI NOT NULL,
  `PRICE` INT(11) NOT NULL,
  `QUANTITY_PR` INT(11) NOT NULL,
  `GUARANTEE_PERIOD` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `ORDER` (
  `ORDER_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `USER_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `CREATE_ORDER_AT` TIMESTAMP NULL DEFAULT NULL,
  `NAME` VARCHAR(100) COLLATE UTF8_UNICODE_CI NOT NULL,
  `EMAIL` VARCHAR(100) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PHONE` VARCHAR(20) COLLATE UTF8_UNICODE_CI NOT NULL,
  `ADDRESS` VARCHAR(100) COLLATE UTF8_UNICODE_CI NOT NULL,
  `STATE` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `NOTE` LONGTEXT COLLATE UTF8_UNICODE_CI NOT NULL,
  `TOTAL` BIGINT(20) UNSIGNED NOT NULL,
  `DISCOUNT` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `DELIVERY_FEE` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Cấu trúc bảng cho bảng `wishlist`
--
CREATE TABLE `WISHLIST`(
  `PRODUCT_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `USER_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `SUPPLIERS` (
  `SUPPLIER_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `SUPPLIER_NAME` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL
)ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

ALTER TABLE `SUPPLIERS` ADD PRIMARY KEY (`SUPPLIER_ID`);

ALTER TABLE `PRODUCTS` ADD `SUPPLIER_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL;

-- ----------------------------------------
CREATE TABLE `DISCOUNTS` (
  `DISCOUNT_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `DISCOUNT_CODE` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL,
  `DISCOUNT_AMOUNT` INT(11) NOT NULL,
  `DISCOUNT_DATE` TIMESTAMP NULL DEFAULT NULL
)ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

ALTER TABLE `DISCOUNTS` ADD PRIMARY KEY (`DISCOUNT_ID`);

CREATE TABLE `PRODUCT_CATEGORY` (
  `PRODUCT_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `CATEGORY_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

CREATE TABLE `TRAFFIC USER`(
  `USER_ID` VARCHAR(15) COLLATE UTF8_UNICODE_CI NOT NULL,
  `TIME` DATETIME NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `CART` ADD PRIMARY KEY (`USER_ID`, `PRODUCT_ID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `CATEGORY` ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Chỉ mục cho bảng `detail_order`
--
ALTER TABLE `DETAIL_ORDER` ADD PRIMARY KEY (`ORDER_ID`, `PRODUCT_ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `USER` ADD PRIMARY KEY (`USER_ID`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `IMAGE` ADD PRIMARY KEY (`IMG_ID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `PRODUCTS` ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `ORDER` ADD PRIMARY KEY (`ORDER_ID`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `WISHLIST` ADD PRIMARY KEY (`USER_ID`, `PRODUCT_ID`);

-- Chỉ mục cho bảng product_category
ALTER TABLE `PRODUCT_CATEGORY` ADD PRIMARY KEY (`PRODUCT_ID`, `CATEGORY_ID`);

-- Chỉ mục cho bảng traffic user
ALTER TABLE `TRAFFIC USER` ADD PRIMARY KEY (`USER_ID`, `TIME`);

-- Foreign Key
ALTER TABLE `IMAGE` ADD CONSTRAINT `PRODUCTS_FK1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCTS` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `CART` ADD CONSTRAINT `CART_FK1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `CART` ADD CONSTRAINT `CART_FK2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCTS` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `DETAIL_ORDER` ADD CONSTRAINT `DO_FK1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCTS` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `DETAIL_ORDER` ADD CONSTRAINT `DO_FK2` FOREIGN KEY (`ORDER_ID`) REFERENCES `ORDER` (`ORDER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `ORDER` ADD CONSTRAINT `ORDER_FK1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `WISHLIST` ADD CONSTRAINT `WL1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `WISHLIST` ADD CONSTRAINT `WL_FK2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCTS` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `PRODUCT_CATEGORY` ADD CONSTRAINT `PC_FK1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `CATEGORY` (`CATEGORY_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `PRODUCT_CATEGORY` ADD CONSTRAINT `PC_FK2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCTS` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `PRODUCTS` ADD CONSTRAINT `PRODUCTS_FK3` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `SUPPLIERS` (`SUPPLIER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `ORDER` ADD CONSTRAINT `ORDER_FK3` FOREIGN KEY (`DISCOUNT`) REFERENCES `DISCOUNTS` (`DISCOUNT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `TRAFFIC USER` ADD CONSTRAINT `TU_FK1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SELECT
  MONTH(NOW()) AS CURRENT_MONTH;

COMMIT;

DROP DATABASE MYDB;