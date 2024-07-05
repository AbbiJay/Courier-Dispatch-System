# Courier Dispatch System

## Overview

The Courier Dispatch System is a comprehensive Python application designed to efficiently manage courier services through a user-friendly graphical interface built with Tkinter. It integrates with MySQL for robust data management, ensuring accurate tracking and delivery of packages.

## Objectives

- **Efficient Management:** Streamline courier operations from pickup to delivery for timely service.
- **Accurate Data Management:** Store and manage precise information about customers, packages, staff, and deliveries.
- **Improved Customer Experience:** Enhance customer satisfaction by providing real-time package tracking and easy access to shipment information.

## Table Details

- **Customer:** Holds customer information including ID, name, email, phone number, and address.
- **Branch:** Stores branch details such as ID, name, email, and address.
- **Delivery:** Manages delivery information including ID, area, date, and staff ID.
- **Staff:** Maintains staff details like ID, name, email, phone number, and branch ID.
- **Package:** Records courier specifics such as ID, weight, cost, dimensions, destination address, customer ID, and delivery ID.

## Frontend

The frontend utilizes Python's Tkinter GUI framework to provide a user-friendly interface for managing courier data:

- **Home Page:** Admin login for system access.
- **Dashboard - Courier Details:** Displays comprehensive courier information.
- **Dashboard - Customer Details:** Provides customer management functionality.
- **Dashboard - Staff Details:** Manages staff information and assignments.
- **Dashboard - Delivery Details:** Tracks delivery progress and schedules.
- **Dashboard - Branch Details:** Manages branch-specific operations and logistics.

## Installation and Setup

### Prerequisites

- Python
- MySQL Server

### Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/AbbiJay/courier-dispatch-system.git
   cd courier-dispatch-system
   ```

2. **Database Setup:**
   - Execute the SQL script (`courier_database.sql`) to create the necessary database schema and tables.
   ```bash
   mysql -u username -p < courier_database.sql
   ```

3. **Install Dependencies:**
   - Ensure you have Python 3 installed.
   - Install required packages using pip:
   ```bash
   pip install tkinter mysql-connector-python
   ```

4. **Run the Application:**
   ```bash
   python main.py
   ```

## Usage

- Upon launching `main.py`, the Tkinter GUI opens, providing access to various functionalities.
- Use buttons and input fields to manage customer data, track deliveries, update staff details, and view branch-specific information.
- Ensure MySQL server is running and configure database credentials in `main.py` for seamless database connectivity.

