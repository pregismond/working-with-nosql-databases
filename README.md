# Working with NoSQL Databases

![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fpregismond%2Fworking-with-nosql-databases&label=Visitors&countColor=%230d76a8&style=flat&labelStyle=none)
[![License](https://img.shields.io/badge/License-Apache_2.0-0D76A8?style=flat)](https://opensource.org/licenses/Apache-2.0)
[![Cloudant 8510](https://img.shields.io/badge/IBM_Cloudant-8510-green.svg?style=flat&logo=ibmcloud)](https://shields.io/)
[![MongoDB 3.6.3](https://img.shields.io/badge/MongoDB-3.6.3-green.svg?style=flat&logo=mongodb&logoColor=white)](https://shields.io/)
[![Cassandra 4.1.4](https://img.shields.io/badge/Apache_Cassandra-4.1.4-green.svg?style=flat&logo=apachecassandra&logoColor=white)](https://shields.io/)

## Disclaimer

This repository contains my submission for the ***Final Assignment Project: Working with NoSQL Databases***. The original files were provided by the IBM Skills Network as part of the **[Introduction to NoSQL Databases](https://www.coursera.org/learn/introduction-to-nosql-databases)** course on Coursera. I have made modifications to fulfill the project requirements.

### Usage

* You are welcome to use this repository as a reference or starting point for your own project.

* If you choose to fork this repository, please ensure that you comply with the terms of the Apache License and give proper credit to the original authors.

## Project Scenario

As a data engineer at a Data Analytics Consulting Company, we take pride in our ability to efficiently handle data in any format on any database platform. The analysts in our offices rely on me to move data from external sources into various databases, transfer data between different types of databases, and execute basic queries across various databases. It’s a critical role that ensures our analysts can focus on analyzing data without worrying about the technical intricacies of data movement and management.

## Objectives

* Replicate a Cloudant database
* Create indexes on a Cloudant database
* Query data in a Cloudant database
* Import data into a MongoDB database
* Query data in a MongoDB database
* Export data from MongoDB
* Import data into a Cassandra database
* Query data in a Cassandra database

## Directions

* Task 1 - Replicate a local database into your Cloudant instance.
* Task 2 - Create an index for the `Director` key, on the `movies` database using the HTTP API.
* Task 3 - Write a query to find all movies directed by `Richard Gage` using the HTTP API.
* Task 4 - Create an index for the `title` key, on the `movies` database using the HTTP API.
* Task 5 - Write a query to list only the `year` and `Director` keys for the `Top Dog` movie using the HTTP API.
* Task 6 - Export the data from the `movies` database into a file named `movies.json`. 
* Task 7 - Import `movies.json` into mongodb server into a database named `entertainment` and a collection named `movies`.
* Task 8 - Write a mongodb query to find the year in which most number of movies were released.
* Task 9 - Write a mongodb query to find the count of movies released after the year 1999.
* Task 10 - Write a query to find out the average votes for movies released in 2007.
* Task 11 - Export the fields `_id`, `title`, `year`, `rating` and `director` from `movies` collection into a file named `partial_data.csv`.
* Task 12 - Import `partial_data.csv` into cassandra server into a keyspace named `entertainment` and table named `movies`.
* Task 13 - Write a cql query to count the number of rows in the `movies` table.
* Task 14 - Create an index for the `rating` column in the `movies` table using cql.
* Task 15 - Write a cql query to count the number of movies that are rated 'G'.

## Setup
 
Before proceeding, complete the steps in the [How to Create an IBM Cloudant Instance](./HowToCreateIBMCloudantInstance.md) document to create a free multi-tenent Cloudant instance.

*Note: This repo can also be used for local NoSQL database migration and analysis. You must have MongoDB Server and Apache Cassandra already installed. Refer to the links below:*

* [Install MongoDB Community Edition on Ubuntu](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/) 
* [Installing Apache Cassandra](https://cassandra.apache.org/doc/stable/cassandra/getting_started/installing.html)

Start the MongoDB and Cassandra processes according to your environment.

Begin the [Final Assignment Project: Working with NoSQL Databases](./Final_Project.md).

## Learner

[Pravin Regismond](https://www.linkedin.com/in/pregismond)

## Acknowledgments

* IBM Skills Network © IBM Corporation 2023. All rights reserved.