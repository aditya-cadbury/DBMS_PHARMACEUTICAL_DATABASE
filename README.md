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

ENTITY RELATIONSHIP DIAGRAM:
![image (1)](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/a52c5c3d-05c7-495b-98bb-89773db9dd80)

RELATIONAL MODEL DIAGRAM: 
![image](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/f7df3728-dee4-477a-9451-2e9a2b934a72)

NORMALISATION: 
![PAGE1](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/f092334e-b7ca-47c6-bbe6-06863fba7073)

![PAGE2](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/70616e8a-0819-49a7-b371-92c72763993d)

![PAGE3](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/6eb306be-d7cd-41b4-89d5-6bed5605e1cd)

![PAGE4](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/aa17f998-ddd1-4d76-8200-20fa648735b8)

![PAGE5](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/51d88a88-27d2-4d29-8c59-c1319a20afe3)

![PAGE 6](https://github.com/aditya-cadbury/DBMS_PHARMACEUTICAL_DATABASE/assets/119806113/a2bf0606-0cf9-4e63-bdcf-b2733fc32611)


Learning from the Projects:
In our time working on the project, we had the opportunity to learn many important aspects of data analysis and security, database management and the working of a pharmaceutical repository. Below mentioned are some of them:


The pharmaceutical sector deals with highly sensitive patient and research data, amplifying the importance of data security. Data analysis is a potent tool for monitoring access and detecting potential breaches. In the process, we learned that data, if not properly stored and organized could not only lead to discrepancies within the database but also be subjected to vulnerabilities such as data breaches.
Hence, we aimed to create a system that opted for data security on both the customers and pharmacy’s end. We have attempted to carefully separate the datasets associated with the customer and pharmacy respectively and introduced an authentication based login system. By doing so, it ensures the integrity and confidentiality of critical information.

Ensuring data accuracy, consistency, and completeness is critical. Incomplete or inaccurate data can lead to discrepancies and erroneous conclusions and decisions.

Standardizing data formats is crucial to creating a consistent database. Consistently naming attributes across all entities and classification systems ensures streamlined data management and interoperability between different systems and databases.
ie. with consistent attribute labeling, it became extremely easy to reference foreign keys and perform other SQL functions on them.

The pharmaceutical landscape is constantly evolving, with new drugs, therapies, and regulations emerging regularly. Hence, it was necessary to create a database structure that could adhere to updates and variations over time. Continuously updating and improving the database to reflect these changes ensures its relevance and utility over time.

Efficient supply chain management is a cornerstone of pharmaceutical operations. Ensuring the timely production and distribution of life-saving medications hinges on effective data analysis. 




