-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** Dim_Order
CREATE TABLE Dim_Order
(
 OrderId     int NOT NULL,
 OrderNumber string NOT NULL,

 CONSTRAINT PK_DIm_Oreder PRIMARY KEY ( OrderId )
)
STAGE_FILE_FORMAT = 
(
 FORMAT_NAME = 'CsvFileFormat'
);
