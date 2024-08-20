-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

\c ecommerce_db

DROP TABLE IF EXISTS product_tag;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS tag;

-- Create the category table
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Create the product table
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INTEGER NOT NULL DEFAULT 10,
    category_id INTEGER REFERENCES category(id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Create the tag table
CREATE TABLE tag (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(255) NOT NULL
);

-- Create the product_tag table to establish a many-to-many relationship between products and tags
CREATE TABLE product_tag (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES product(id) ON DELETE CASCADE ON UPDATE CASCADE,
    tag_id INTEGER REFERENCES tag(id) ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (product_id, tag_id)
);