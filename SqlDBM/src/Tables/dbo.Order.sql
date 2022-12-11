-- *************************** SqlDBM: Oracle ***************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** dbo."Order"
CREATE TABLE dbo."Order"
(
 OrderId         NUMBER NOT NULL,
 OrderNumber     CHAR(10) NULL,
 CustomerId      NUMBER NOT NULL,
 OrderDate       DATE DEFAULT CURRENT_TIMESTAMP NOT NULL,
 TotalAmount     NUMBER NOT NULL,
 CONSTRAINT PK_Order PRIMARY KEY (OrderId),
 CONSTRAINT AK1_Order_OrderNumber UNIQUE (OrderNumber),
 CONSTRAINT FK_Order_CustomerId_Customer FOREIGN KEY (CustomerId) REFERENCES dbo.Customer (CustomerId)
);
COMMENT ON TABLE dbo."Order" IS 'Order information
like Date, Amount';
