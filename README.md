# DBMS_PHARMACEUTICAL_DATABASE
THIS PROJECT IS ON THE PHARMACEUTICAL DATABASE THAT IS CREATED SOLELY USING SQL QUERIES 
Components of Database Design

Entities:
(Primary keys represented using  “underline” and foreign keys using “bold” )

Employee: (empID, emp_Username, Password, Name, Contact_info, Address, Sex, DOB, Shift_time) 

Customer: (CustID, cust_Username, Password, Name, Contact_info, Address, Sex, DOB, Allergies)

Pharmacy:(PharmacyID, Phar_name, Pharm_adress, Pharm_no, empID)

Orders: (order_id, invoice_date, order_type, order_total_amount, customer_id)

SupplierCompany: (comp_id, comp_name, comp_address, comp_contact, PharmacyID)

PurchaseInvoice:(purchase_id, product_name, expiry_date, Batch_no, total_qty, retail_price, total_price, order_id)

Attendance:(date, time_in, time_out, status, employee_id)

Medicine_info: (medicine_no, Brand_name, med_name, Ingredients, diagnose, Quantity_supplied, Amount, comp_id)

Sale invoice: (sale_id, total_products, total_price, product_id, customer_id)

Inventory: (product_id, product_name, products_in_total, Medicine_no)


