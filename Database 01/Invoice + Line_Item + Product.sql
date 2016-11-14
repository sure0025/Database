/*drop table LINE_ITEM ;
drop table INVOICE
*/

CREATE TABLE INVOICE (
InvoiceNumber int NOT NULL,
InvoiceDate date NOT NULL,
SubTotal float NOT NULL,
TaxPct float NOT NULL,
Total float NOT NULL 
CONSTRAINT invoice_PK PRIMARY KEY (InvoiceNumber)
);
CREATE TABLE PRODUCT (
ProductNumber int NOT NULL,
ProductType char(100) NOT NULL,
ProductDescription char (200) NOT NULL,
UnitPrice char(100) NOT NULL
CONSTRAINT PRODUCT_PK PRIMARY KEY (ProductNumber)
); 

CREATE TABLE LINE_ITEM (
InvoiceNumber int NOT NULL,
LineNumber int NOT NULL, 
ProductNumber int NOT NULL,
Quantity int, 
Unitprice char (100) NOT NULL, 
Total char (100) NOT NULL
CONSTRAINT LINE_ITEM_PK PRIMARY KEY (InvoiceNumber, LineNumber)
CONSTRAINT LINE_ITEM_INVOICE_FK FOREIGN KEY (InvoiceNumber)
								REFERENCES INVOICE (InvoiceNumber) ,
CONSTRAINT LINE_ITEM_PRODUCT_FK FOREIGN KEY (ProductNumber)
								REFERENCES PRODUCT (ProductNumber) 
);

