# Module-13-Challenge  E-commerce  
# Description    
    This project involves building the back end of an e-commerce site using Express.js and Sequelize to interact with a PostgreSQL database. This back end serves as the foundation for an internet retail platform, allowing businesses and consumers to engage in the online buying and selling of electronic products.

    The main objective is to configure a working Express.js API to manage an e-commerce database that includes categories, products, tags, and product-tag associations.I had issues with the connection part, when I do the GET routs it doesnt show the products added on the seeds, I tried fixing in various different ways but I was not able to do it. 

    

# Table of Contents
    Installation
    Usage
    Database Setup
    Commands
    Troubleshooting
    License

## Installation

Before you begin, ensure you have to make sure to clone the repositorie using the command: 

git clone (repo link)

after you run Npm install to download the packages

Connect to PostgreSQL using the command:
psql -U postgres

Rename .env.example to .env and configure your database credentials

Run the command to create the db and the tables:
\i db/schema.sql

## Usage

To start the application, run: 
npm start

## License

This project is licensed under the MIT License.

## Video of the project

[text](Module-13-Challenge.webm)