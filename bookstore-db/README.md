# Bookstore Database Project

This project is designed to create and manage a MySQL database for a bookstore. It includes tables for books, authors, customers, orders, and related entities.

## Project Structure

```
bookstore-db
├── src
│   ├── schema
│   │   ├── tables.sql       # SQL commands to create the tables
│   │   └── constraints.sql   # SQL commands to define constraints
│   ├── data
│   │   └── sample_data.sql   # SQL commands to insert sample data
│   └── queries
│       ├── books.sql         # SQL queries related to books
│       ├── authors.sql       # SQL queries related to authors
│       ├── customers.sql     # SQL queries related to customers
│       └── orders.sql        # SQL queries related to orders
├── scripts
│   ├── init.sql              # SQL commands to initialize the database
│   └── backup.sql            # SQL commands to back up the database
└── README.md                 # Documentation for the project
```

## Setup Instructions

1. **Database Initialization**: Run the `init.sql` script to create the database and tables.
2. **Insert Sample Data**: Execute `sample_data.sql` to populate the database with initial data.
3. **Running Queries**: Use the SQL files in the `queries` directory to retrieve and analyze data as needed.
4. **Backup**: Use the `backup.sql` script to create backups of the database.

## Usage

This project can be used to manage a bookstore's inventory, track customer orders, and analyze sales data. Modify the SQL queries in the `queries` directory to suit your specific reporting needs.