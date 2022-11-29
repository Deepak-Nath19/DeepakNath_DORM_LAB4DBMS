create database e_commerce;
use e_commerce;
/* creating table supplier */
create table if not exists supplier(
		SUPP_ID INT PRIMARY KEY,
        SUPP_NAME VARCHAR(50) NOT NULL,
        SUPP_CITY VARCHAR(50) NOT NULL,
        SUPP_PHONE VARCHAR(50) NOT NULL
        );
/* creating table customer */
create table if not exists customer(
		CUS_ID INT PRIMARY KEY,
        CUS_NAME VARCHAR(20) NOT NULL,
        CUS_PHONE VARCHAR(10) NOT NULL,
        CUS_CITY VARCHAR(30) NOT NULL,
        CUS_GENDER CHAR(1)
        );
/* creating table category */
create table if not exists category(
		CAT_ID INT PRIMARY KEY,
        CAT_NAME VARCHAR(20) NOT NULL
        );
/* creating table product */
create table if not exists product(
		PRO_ID INT PRIMARY KEY,
        PRO_NAME VARCHAR(20) DEFAULT 'Dummy',
        PRO_DESC VARCHAR(60),
        CAT_ID INT,
        FOREIGN KEY (CAT_ID) REFERENCES category(CAT_ID)
		);
/*  creating table supplier_pricing */
create table if not exists supplier_pricing(
		PRICING_ID INT PRIMARY KEY,
        PRO_ID INT,
        SUPP_ID INT,
        SUPP_PRICE INT DEFAULT 0,
        FOREIGN KEY (PRO_ID) REFERENCES product(PRO_ID),
        FOREIGN KEY (SUPP_ID) REFERENCES supplier(SUPP_ID)
        );
/* creating table order */
create table if not exists `order` (
		ORD_ID INT PRIMARY KEY,
        ORD_AMOUNT INT NOT NULL,
        ORD_DATE DATE NOT NULL,
        CUS_ID INT,
        PRICING_ID INT,
        FOREIGN KEY(CUS_ID) REFERENCES customer(CUS_ID),
        FOREIGN KEY(PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
        );
/* creating table rating */
create table if not exists rating(
		RAT_ID INT PRIMARY KEY,
        ORD_ID INT,
        RAT_RATSTARS INT NOT NULL,
        FOREIGN KEY (ORD_ID) REFERENCES `order`(ORD_ID)
        );
	

        
        



