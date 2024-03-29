import tkinter as tk
from tkinter import messagebox
import mysql.connector

# Function to connect to the MySQL database
def connect_to_database():
    db = mysql.connector.connect(
        host="localhost",
        user="your_username",
        password="your_password",
        database="dbmsminiproject"
    )
    cursor = db.cursor()
    return db, cursor

# Function to handle employee login
def employee_login():
    username = username_entry_emp.get()
    password = password_entry_emp.get()

    if username == "" or password == "":
        messagebox.showerror("Error", "Please enter both username and password.")
        return

    db, cursor = connect_to_database()

    # Check if username and password exist in the database
    cursor.execute("SELECT * FROM Employee WHERE emp_Username=%s AND Password=%s", (username, password))
    employee = cursor.fetchone()

    if employee:
        messagebox.showinfo("Success", "Employee login successful.")
        # Implement actions after successful login (e.g., display inventory, orders, etc.)
        employee_interface()
    else:
        messagebox.showerror("Error", "Invalid username or password.")

    db.close()

# Function to handle customer login
def customer_login():
    username = username_entry_cust.get()
    password = password_entry_cust.get()

    if username == "" or password == "":
        messagebox.showerror("Error", "Please enter both username and password.")
        return

    db, cursor = connect_to_database()

    # Check if username and password exist in the database
    cursor.execute("SELECT * FROM Customer WHERE cust_Username=%s AND Password=%s", (username, password))
    customer = cursor.fetchone()

    if customer:
        messagebox.showinfo("Success", "Customer login successful.")
        # Implement actions after successful login (e.g., display purchase options, invoices, etc.)
        customer_interface()
    else:
        messagebox.showerror("Error", "Invalid username or password.")

    db.close()

# Function to handle employee interface
def employee_interface():
    print("Welcome to Employee Interface")
    print("1. View Employee Information")
    print("2. Add New Employee")
    print("3. Update Employee Information")
    print("4. Delete Employee")
    print("5. Exit")
    
    choice = input("Enter your choice: ")
    
    if choice == "1":
        view_employee_info()
    elif choice == "2":
        add_new_employee()
    elif choice == "3":
        update_employee_info()
    elif choice == "4":
        delete_employee()
    elif choice == "5":
        exit()
    else:
        print("Invalid choice!")
        employee_interface()

# Function to handle customer interface
def customer_interface():
    print("Welcome to Customer Interface")
    print("1. View Customer Information")
    print("2. Add New Customer")
    print("3. Update Customer Information")
    print("4. Delete Customer")
    print("5. Exit")
    
    choice = input("Enter your choice: ")
    
    if choice == "1":
        view_customer_info()
    elif choice == "2":
        add_new_customer()
    elif choice == "3":
        update_customer_info()
    elif choice == "4":
        delete_customer()
    elif choice == "5":
        exit()
    else:
        print("Invalid choice!")
        customer_interface()

# Function to view employee information
def view_employee_info():
    db, cursor = connect_to_database()
    query = "SELECT * FROM Employee"
    cursor.execute(query)
    employees = cursor.fetchall()
    db.close()
    
    if not employees:
        print("No employees found!")
    else:
        print("Employee Information:")
        for employee in employees:
            print(employee)
    
    employee_interface()

# Function to add a new employee
def add_new_employee():
    db, cursor = connect_to_database()
    empID = input("Enter Employee ID: ")
    emp_Username = input("Enter Username: ")
    password = input("Enter Password: ")
    name = input("Enter Name: ")
    contact_info = input("Enter Contact Information: ")
    address = input("Enter Address: ")
    sex = input("Enter Sex (M/F): ")
    dob = input("Enter Date of Birth (YYYY-MM-DD): ")
    shift_time = input("Enter Shift Time: ")
    
    query = "INSERT INTO Employee VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    values = (empID, emp_Username, password, name, contact_info, address, sex, dob, shift_time)
    
    cursor.execute(query, values)
    db.commit()
    db.close()
    
    print("Employee added successfully!")
    
    employee_interface()

# Function to update employee information
def update_employee_info():
    db, cursor = connect_to_database()
    empID = input("Enter Employee ID to update: ")
    field = input("Enter field to update (emp_Username, Password, Name, Contact_info, Address, Sex, DOB, Shift_time): ")
    new_value = input(f"Enter new value for {field}: ")
    
    query = f"UPDATE Employee SET {field} = %s WHERE empID = %s"
    values = (new_value, empID)
    
    cursor.execute(query, values)
    db.commit()
    db.close()
    
    print("Employee information updated successfully!")
    
    employee_interface()

# Function to delete an employee
def delete_employee():
    db, cursor = connect_to_database()
    empID = input("Enter Employee ID to delete: ")
    
    query = "DELETE FROM Employee WHERE empID = %s"
    values = (empID,)
    
    cursor.execute(query, values)
    db.commit()
    db.close()
    
    print("Employee deleted successfully!")
    
    employee_interface()

# Function to view customer information
def view_customer_info():
    db, cursor = connect_to_database()
    query = "SELECT * FROM Customer"
    cursor.execute(query)
    customers = cursor.fetchall()
    db.close()
    
    if not customers:
        print("No customers found!")
    else:
        print("Customer Information:")
        for customer in customers:
            print(customer)
    
    customer_interface()

# Function to add a new customer
def add_new_customer():
    db, cursor = connect_to_database()
    custID = input("Enter Customer ID: ")
    cust_Username = input("Enter Username: ")
    password = input("Enter Password: ")
    name = input("Enter Name: ")
    contact_info = input("Enter Contact Information: ")
    address = input("Enter Address: ")
    sex = input("Enter Sex (M/F): ")
    dob = input("Enter Date of Birth (YYYY-MM-DD): ")
    allergies = input("Enter Allergies: ")
    
    query = "INSERT INTO Customer VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    values = (custID, cust_Username, password, name, contact_info, address, sex, dob, allergies)
    
    cursor.execute(query, values)
    db.commit()
    db.close()
    
    print("Customer added successfully!")
    
    customer_interface()

# Function to update customer information
def update_customer_info():
    db, cursor = connect_to_database()
    custID = input("Enter Customer ID to update: ")
    field = input("Enter field to update (cust_Username, Password, Name, Contact_info, Address, Sex, DOB, Allergies): ")
    new_value = input(f"Enter new value for {field}: ")
    
    query = f"UPDATE Customer SET {field} = %s WHERE CustID = %s"
    values = (new_value, custID)
    
    cursor.execute(query, values)
    db.commit()
    db.close()
    
    print("Customer information updated successfully!")
    
    customer_interface()

# Function to delete a customer
def delete_customer():
    db, cursor = connect_to_database()
    custID = input("Enter Customer ID to delete: ")
    
    query = "DELETE FROM Customer WHERE CustID = %s"
    values = (custID,)
    
    cursor.execute(query, values)
    db.commit()
    db.close()
    
    print("Customer deleted successfully!")
    
    customer_interface()

# Create main window
root = tk.Tk()
root.title("Pharmacy Management System")

# Employee login section
employee_frame = tk.Frame(root)
employee_frame.pack(pady=20)

tk.Label(employee_frame, text="Employee Login", font=("Helvetica", 16)).grid(row=0, column=0, columnspan=2, pady=10)

tk.Label(employee_frame, text="Username:").grid(row=1, column=0)
username_entry_emp = tk.Entry(employee_frame)
username_entry_emp.grid(row=1, column=1)

tk.Label(employee_frame, text="Password:").grid(row=2, column=0)
password_entry_emp = tk.Entry(employee_frame, show="*")
password_entry_emp.grid(row=2, column=1)

employee_button = tk.Button(employee_frame, text="Login", command=employee_login)
employee_button.grid(row=3, column=0, columnspan=2, pady=10)

# Customer login section
customer_frame = tk.Frame(root)
customer_frame.pack(pady=20)

tk.Label(customer_frame, text="Customer Login", font=("Helvetica", 16)).grid(row=0, column=0, columnspan=2, pady=10)

tk.Label(customer_frame, text="Username:").grid(row=1, column=0)
username_entry_cust = tk.Entry(customer_frame)
username_entry_cust.grid(row=1, column=1)

tk.Label(customer_frame, text="Password:").grid(row=2, column=0)
password_entry_cust = tk.Entry(customer_frame, show="*")
password_entry_cust.grid(row=2, column=1)

customer_button = tk.Button(customer_frame, text="Login", command=customer_login)
customer_button.grid(row=3, column=0, columnspan=2, pady=10)

root.mainloop()
