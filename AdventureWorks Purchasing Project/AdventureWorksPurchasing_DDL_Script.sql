--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      ER_Purchasing_DW.DM1
--
-- Date Created : Tuesday, February 25, 2020 21:42:05
-- Target DBMS : Oracle 11g
--

-- 
-- TABLE: DimDate 
--

CREATE TABLE DimDate(
    DateID_SK               NUMBER(38, 0)    NOT NULL,
    SOR_SK                  NUMBER(38, 0),
    FullDateAlternateKey    DATE             NOT NULL,
    DI_JobID                NVARCHAR2(50),
    CreatedDate             TIMESTAMP(6),
    ModifiedDate            TIMESTAMP(6),
    CONSTRAINT PK12 PRIMARY KEY (DateID_SK)
)
;



-- 
-- TABLE: DimEmloyeePay 
--

CREATE TABLE DimEmloyeePay(
    EmployeePayID_SK          NUMBER(38, 0)    NOT NULL,
    EmployeePay_Durable_SK    NUMBER(38, 0)    NOT NULL,
    EmployeePayID_NK          NUMBER(38, 0)    NOT NULL,
    SOR_SK                    NUMBER(38, 0),
    RateChangeDate            TIMESTAMP(6)     NOT NULL,
    Rate                      NUMBER(20, 5)    NOT NULL,
    PayFrequency              NUMBER(3, 0)     NOT NULL,
    EffectiveDate             TIMESTAMP(6)     NOT NULL,
    InEffectiveDate           TIMESTAMP(6),
    CurrentIndicator          NCHAR(1)         NOT NULL,
    DI_JobID                  NVARCHAR2(50),
    CreatedDate               TIMESTAMP(6),
    ModifiedDate              TIMESTAMP(6),
    CONSTRAINT PK29 PRIMARY KEY (EmployeePayID_SK, EmployeePay_Durable_SK)
)
;



-- 
-- TABLE: DimEmployee 
--

CREATE TABLE DimEmployee(
    EmployeeID_SK          NUMBER(38, 0)     NOT NULL,
    NationalIDNumber_AK    NVARCHAR2(15)     NOT NULL,
    SOR_SK                 NUMBER(38, 0),
    NameStyle              NUMBER(1, 0)      NOT NULL,
    Title                  NVARCHAR2(8),
    FirstName              NVARCHAR2(50)     NOT NULL,
    MiddleName             NVARCHAR2(10)     NOT NULL,
    LastName               NVARCHAR2(50)     NOT NULL,
    Suffix                 NVARCHAR2(10),
    EmailAddress           NVARCHAR2(50),
    PhoneNumber            NVARCHAR2(25)     NOT NULL,
    PostalCode             NVARCHAR2(15)     NOT NULL,
    City                   NVARCHAR2(30)     NOT NULL,
    LoginID                NVARCHAR2(256)    NOT NULL,
    HireDate               DATE              NOT NULL,
    BirthDate              DATE              NOT NULL,
    MaritalStatus          NCHAR(1)          NOT NULL,
    Gender                 NCHAR(1)          NOT NULL,
    SalariedFlag           NUMBER(1, 0)      DEFAULT 1 NOT NULL,
    VacationHours          SMALLINT          DEFAULT 0 NOT NULL,
    SickLeaveHours         SMALLINT          DEFAULT 0 NOT NULL,
    CurrentFlag            NUMBER(1, 0)      DEFAULT 1 NOT NULL,
    DepartmentName         NVARCHAR2(50)     NOT NULL,
    Address1               NVARCHAR2(60)     NOT NULL,
    Address2               NVARCHAR2(60),
    DI_JobID               NVARCHAR2(50),
    CreatedDate            TIMESTAMP(6),
    ModifiedDate           TIMESTAMP(6),
    GeographyID_SK         NUMBER(38, 0)     NOT NULL,
    VendorID_SK            NUMBER(38, 0)     NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY (EmployeeID_SK)
)
;



-- 
-- TABLE: DImGeography 
--

CREATE TABLE DImGeography(
    GeographyID_SK       NUMBER(38, 0)    NOT NULL,
    SOR_SK               NUMBER(38, 0),
    CountryRegionCode    NCHAR(3)         NOT NULL,
    CountryRegionName    NVARCHAR2(50)    NOT NULL,
    StateProvinceCode    NCHAR(3)         NOT NULL,
    StateProvinceName    NVARCHAR2(50)    NOT NULL,
    PostalCode           NVARCHAR2(15)    NOT NULL,
    City                 NVARCHAR2(30)    NOT NULL,
    DI_JobID             NVARCHAR2(50),
    CreatedDate          TIMESTAMP(6),
    ModifiedDate         TIMESTAMP(6),
    CONSTRAINT PK8 PRIMARY KEY (GeographyID_SK)
)
;



-- 
-- TABLE: DimLocation 
--

CREATE TABLE DimLocation(
    LocationID_SK    NUMBER(38, 0)    NOT NULL,
    LocationID_NK    NUMBER(38, 0)    NOT NULL,
    SOR_SK           NUMBER(38, 0),
    LocationName     NVARCHAR2(50)    NOT NULL,
    CostRate         NUMBER(10, 2)    DEFAULT 0.00 NOT NULL,
    Availability     NUMBER(8, 2)     DEFAULT 0.00 NOT NULL,
    Shelf            NVARCHAR2(10)    NOT NULL,
    Bin              NUMBER(3, 0)     NOT NULL,
    DI_JobID         NVARCHAR2(50),
    CreatedDate      TIMESTAMP(6),
    ModifiedDate     TIMESTAMP(6),
    CONSTRAINT PK13 PRIMARY KEY (LocationID_SK)
)
;



-- 
-- TABLE: DimProduct 
--

CREATE TABLE DimProduct(
    ProductID_SK              NUMBER(38, 0)    NOT NULL,
    ProductID_NK              NUMBER(38, 0)    NOT NULL,
    SOR_SK                    NUMBER(38, 0),
    ProductName               NVARCHAR2(50)    NOT NULL,
    ProductCategoryName       NVARCHAR2(50)    NOT NULL,
    ProductSubCategoryName    NVARCHAR2(50)    NOT NULL,
    ProductModelName          NVARCHAR2(50)    NOT NULL,
    ProductNumber             NVARCHAR2(25)    NOT NULL,
    SafetyStockLevel          SMALLINT         NOT NULL,
    MakeFlag                  NUMBER(1, 0)     NOT NULL,
    FinishedGoodFlag          NUMBER(1, 0)     NOT NULL,
    Color                     NVARCHAR2(15),
    ReorderPoint              SMALLINT         NOT NULL,
    Size                      NVARCHAR2(5),
    Weight                    NUMBER(8, 2),
    DaysToManufacture         NUMBER(38, 0)    NOT NULL,
    ProductLine               NVARCHAR2(2),
    Class                     NVARCHAR2(2),
    Style                     NVARCHAR2(2),
    SellStartDate             TIMESTAMP(6)     NOT NULL,
    SellEndDate               TIMESTAMP(6),
    DiscontinuedDate          TIMESTAMP(6),
    CatalogDescription        SYS.XMLType,
    Instructions              SYS.XMLType,
    UnitMeasureCodeName       NVARCHAR2(50),
    UnitPrice                 NUMBER(20, 5)    NOT NULL,
    DI_JobID                  NVARCHAR2(50),
    CreatedDate               TIMESTAMP(6),
    ModifiedDate              TIMESTAMP(6),
    CONSTRAINT PK6 PRIMARY KEY (ProductID_SK)
)
;



-- 
-- TABLE: DimProductListPrice 
--

CREATE TABLE DimProductListPrice(
    ProductListPrice_Table_SK      NUMBER(38, 0)    NOT NULL,
    ProductListPrice_Durable_SK    NUMBER(38, 0)    NOT NULL,
    ProductListPrice_NK            NUMBER(38, 0)    NOT NULL,
    SOR_SK                         NUMBER(38, 0),
    ListPrice                      NUMBER(20, 5)    NOT NULL,
    EffectiveDate                  TIMESTAMP(6)     NOT NULL,
    IneffectiveDate                TIMESTAMP(6),
    CurrentIndicator               NCHAR(1)         NOT NULL,
    DI_JobID                       NVARCHAR2(50),
    CreatedDate                    TIMESTAMP(6),
    ModifiedDate                   TIMESTAMP(6),
    CONSTRAINT PK4 PRIMARY KEY (ProductListPrice_Table_SK, ProductListPrice_Durable_SK)
)
;



-- 
-- TABLE: DimProductStandardCost 
--

CREATE TABLE DimProductStandardCost(
    ProductStandardCost_Table_SK      NUMBER(38, 0)    NOT NULL,
    ProductStandardCost_Durable_SK    NUMBER(38, 0)    NOT NULL,
    ProductStandardCost_NK            NUMBER(38, 0)    NOT NULL,
    StandardCost                      NUMBER(20, 5)    NOT NULL,
    EffectiveDate                     TIMESTAMP(6)     NOT NULL,
    IneffectiveDate                   TIMESTAMP(6),
    CurrentIndicator                  NCHAR(1)         NOT NULL,
    DI_JobID                          NVARCHAR2(50),
    CreatedDate                       TIMESTAMP(6),
    ModifiedDate                      TIMESTAMP(6),
    CONSTRAINT PK7 PRIMARY KEY (ProductStandardCost_Table_SK, ProductStandardCost_Durable_SK)
)
;



-- 
-- TABLE: DimProductVendor 
--

CREATE TABLE DimProductVendor(
    ProductVendorID_SK    NUMBER(38, 0)    NOT NULL,
    ProductVendorID_NK    NUMBER(38, 0)    NOT NULL,
    SOR_SK                NUMBER(38, 0),
    AverageLeadTime       NUMBER(38, 0)    NOT NULL,
    StandardPrice         NUMBER(20, 5)    NOT NULL,
    LastReceiptCost       NUMBER(20, 5),
    LastReceiptDate       TIMESTAMP(6),
    MinOrderQty           NUMBER(38, 0)    NOT NULL,
    MaxOrderQty           NUMBER(38, 0)    NOT NULL,
    OnOrderQty            NUMBER(38, 0),
    DI_JobID              NVARCHAR2(50),
    CreatedDate           TIMESTAMP(6),
    ModifiedDate          TIMESTAMP(6),
    ProductID_SK          NUMBER(38, 0),
    VendorID_SK           NUMBER(38, 0),
    CONSTRAINT PK11 PRIMARY KEY (ProductVendorID_SK)
)
;



-- 
-- TABLE: DimSalesTerritory 
--

CREATE TABLE DimSalesTerritory(
    SalesTerritoryID_SK         NUMBER(38, 0)    NOT NULL,
    SalesTerritoryID_NK         NUMBER(38, 0)    NOT NULL,
    SOR_SK                      NUMBER(38, 0),
    SalesTerritoryRegionCode    NVARCHAR2(3)     NOT NULL,
    SalesTerritoryName          NVARCHAR2(50)    NOT NULL,
    SalesTerritoryGroup         NVARCHAR2(50)    NOT NULL,
    DI_JobID                    NVARCHAR2(50),
    CreatedDate                 TIMESTAMP(6),
    ModifiedDate                TIMESTAMP(6),
    GeographyID_SK              NUMBER(38, 0),
    CONSTRAINT PK9 PRIMARY KEY (SalesTerritoryID_SK)
)
;



-- 
-- TABLE: DimScrapReason 
--

CREATE TABLE DimScrapReason(
    ScrapReasonID_SK    NUMBER(38, 0)    NOT NULL,
    ScrapReasonID_NK    NUMBER(38, 0)    NOT NULL,
    SOR_SK              NUMBER(38, 0),
    Name                NVARCHAR2(50)    NOT NULL,
    DI_JobID            NVARCHAR2(50),
    CreatedDate         TIMESTAMP(6),
    ModifiedDate        TIMESTAMP(6),
    CONSTRAINT PK23 PRIMARY KEY (ScrapReasonID_SK)
)
;



-- 
-- TABLE: DimShipMethod 
--

CREATE TABLE DimShipMethod(
    ShipMethodID_SK     NUMBER(38, 0)    NOT NULL,
    DimShipMethod_NK    NUMBER(38, 0)    NOT NULL,
    SOR_SK              NUMBER(38, 0),
    ShipName            NVARCHAR2(50)    NOT NULL,
    ShipBase            NUMBER(20, 5)    DEFAULT 0.00 NOT NULL,
    ShipRate            NUMBER(20, 5)    DEFAULT 0.0 NOT NULL,
    DI_JobID            NVARCHAR2(50),
    CreatedDate         TIMESTAMP(6),
    ModifiedDate        TIMESTAMP(6),
    CONSTRAINT PK10 PRIMARY KEY (ShipMethodID_SK)
)
;



-- 
-- TABLE: DimSORSystem 
--

CREATE TABLE DimSORSystem(
    SOR_SK                NUMBER(38, 0)    NOT NULL,
    SOR_Name              NVARCHAR2(50)    NOT NULL,
    SOR_Module            NVARCHAR2(50)    NOT NULL,
    SOR_Table             NVARCHAR2(50)    NOT NULL,
    OtherSORAttributes    NVARCHAR2(50)    NOT NULL,
    DI_JobID              NVARCHAR2(50),
    CreatedDate           TIMESTAMP(6),
    ModifiedDate          TIMESTAMP(6),
    CONSTRAINT PK27 PRIMARY KEY (SOR_SK)
)
;



-- 
-- TABLE: DimVendor 
--

CREATE TABLE DimVendor(
    VendorID_SK                NUMBER(38, 0)      NOT NULL,
    VendorID_NK                NUMBER(38, 0)      NOT NULL,
    SOR_SK                     NUMBER(38, 0),
    AccountNumber              NVARCHAR2(15)      NOT NULL,
    VendorName                 NVARCHAR2(50)      NOT NULL,
    CreditRating               NUMBER(3, 0)       NOT NULL,
    AddressLine1               NVARCHAR2(60)      NOT NULL,
    AddressLine2               NVARCHAR2(60),
    PostalCode                 NVARCHAR2(15)      NOT NULL,
    City                       NVARCHAR2(30)      NOT NULL,
    PurchasingWebServiceURL    NVARCHAR2(1024),
    PreferredVendorStatus      NUMBER(1, 0)       NOT NULL,
    ActiveFlag                 NUMBER(1, 0)       NOT NULL,
    DI_JobID                   NVARCHAR2(50),
    CreatedDate                TIMESTAMP(6),
    ModifiedDate               TIMESTAMP(6),
    GeographyID_SK             NUMBER(38, 0)      NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY (VendorID_SK)
)
;



-- 
-- TABLE: DimVendorContacts 
--

CREATE TABLE DimVendorContacts(
    VendorContactsID_SK    NUMBER(38, 0)    NOT NULL,
    VendorContactsID_NK    NUMBER(38, 0)    NOT NULL,
    SOR_SK                 NUMBER(38, 0),
    FirstName              NVARCHAR2(50)    NOT NULL,
    MiddleName             NVARCHAR2(50),
    LastName               NVARCHAR2(50)    NOT NULL,
    EmailAddress           NVARCHAR2(50),
    PhoneNumber            NVARCHAR2(25)    NOT NULL,
    DI_JobID               NVARCHAR2(50),
    CreatedDate            TIMESTAMP(6),
    ModifiedDate           TIMESTAMP(6),
    VendorID_SK            NUMBER(38, 0)    NOT NULL,
    CONSTRAINT PK28 PRIMARY KEY (VendorContactsID_SK)
)
;



-- 
-- TABLE: Fact_WorkOrder 
--

CREATE TABLE Fact_WorkOrder(
    WorkOrderID_SK      NUMBER(38, 0)    NOT NULL,
    WorkOrderID_NK      NUMBER(38, 0)    NOT NULL,
    SOR_SK              NUMBER(38, 0),
    OrderQty            NUMBER(38, 0)    NOT NULL,
    StockedQty          NUMBER(38, 0)    NOT NULL,
    ScrappedQty         SMALLINT         NOT NULL,
    StartDate           TIMESTAMP(6)     NOT NULL,
    EndDate             TIMESTAMP(6),
    DueDate             TIMESTAMP(6)     NOT NULL,
    DI_JobID            NVARCHAR2(50),
    CreatedDate         TIMESTAMP(6),
    ModifiedDate        TIMESTAMP(6),
    ProductID_SK        NUMBER(38, 0)    NOT NULL,
    ScrapReasonID_SK    NUMBER(38, 0)    NOT NULL,
    CONSTRAINT PK16 PRIMARY KEY (WorkOrderID_SK)
)
;



-- 
-- TABLE: Fact_WorkOrder_Rejects 
--

CREATE TABLE Fact_WorkOrder_Rejects(
    WorkOrderRejectID_SK     NUMBER(38, 0)    NOT NULL,
    WorkOrderRejectsID_NK    NUMBER(38, 0)    NOT NULL,
    SOR_SK                   NUMBER(38, 0),
    OrderQty                 NUMBER(38, 0)    NOT NULL,
    StockedQty               NUMBER(38, 0)    NOT NULL,
    ScrappedQty              SMALLINT         NOT NULL,
    StartDate                TIMESTAMP(6)     NOT NULL,
    EndDate                  TIMESTAMP(6),
    DueDate                  TIMESTAMP(6)     NOT NULL,
    DI_JobID                 NVARCHAR2(50),
    CreatedDate              TIMESTAMP(6),
    ModifiedDate             TIMESTAMP(6),
    ProductID_SK             NUMBER(38, 0)    NOT NULL,
    ScrapReasonID_SK         NUMBER(38, 0)    NOT NULL,
    CONSTRAINT PK16_1 PRIMARY KEY (WorkOrderRejectID_SK)
)
;



-- 
-- TABLE: Fact_WorkOrderRouting 
--

CREATE TABLE Fact_WorkOrderRouting(
    WorkOrderRoutingID_SK    NUMBER(38, 0)    NOT NULL,
    SOR_SK                   NUMBER(38, 0),
    ScheduledStartDate       TIMESTAMP(6)     NOT NULL,
    ScheduledEndDate         TIMESTAMP(6)     NOT NULL,
    ActualStartDate          TIMESTAMP(6),
    ActualEndDate            TIMESTAMP(6),
    ActualResourceHrs        NUMBER(9, 4),
    PlannedCost              NUMBER(20, 5)    NOT NULL,
    ActualCost               NUMBER(20, 5),
    DI_JobID                 NVARCHAR2(50),
    CreatedDate              TIMESTAMP(6),
    ModifiedDate             TIMESTAMP(6),
    WorkOrderID_SK           NUMBER(38, 0),
    LocationID_SK            NUMBER(38, 0),
    CONSTRAINT PK19 PRIMARY KEY (WorkOrderRoutingID_SK)
)
;



-- 
-- TABLE: Fact_WorkOrderRouting_Rejects 
--

CREATE TABLE Fact_WorkOrderRouting_Rejects(
    WorkOrderRoutingRejectID_SK    NUMBER(38, 0)    NOT NULL,
    SOR_SK                         NUMBER(38, 0),
    ScheduledStartDate             TIMESTAMP(6)     NOT NULL,
    ScheduledEndDate               TIMESTAMP(6)     NOT NULL,
    ActualStartDate                TIMESTAMP(6),
    ActualEndDate                  TIMESTAMP(6),
    ActualResourceHrs              NUMBER(9, 4),
    PlannedCost                    NUMBER(20, 5)    NOT NULL,
    ActualCost                     NUMBER(20, 5),
    DI_JobID                       NVARCHAR2(50),
    CreatedDate                    TIMESTAMP(6),
    ModifiedDate                   TIMESTAMP(6),
    LocationID_SK                  NUMBER(38, 0),
    WorkOrderID_SK                 NUMBER(38, 0),
    CONSTRAINT PK19_1 PRIMARY KEY (WorkOrderRoutingRejectID_SK)
)
;



-- 
-- TABLE: FactInventory 
--

CREATE TABLE FactInventory(
    InventoryID_SK    NUMBER(38, 0)    NOT NULL,
    SOR_SK            CHAR(10),
    Quantity          SMALLINT         DEFAULT 0 NOT NULL,
    DI_JobID          NVARCHAR2(50),
    CreatedDate       TIMESTAMP(6),
    ModifiedDate      TIMESTAMP(6),
    LocationID_SK     NUMBER(38, 0)    NOT NULL,
    DateID_SK         NUMBER(38, 0),
    ProductID_SK      NUMBER(38, 0),
    CONSTRAINT PK15 PRIMARY KEY (InventoryID_SK)
)
;



-- 
-- TABLE: FactPurchaseOrder 
--

CREATE TABLE FactPurchaseOrder(
    PurchaseOrderID_SK     NUMBER(38, 0)    NOT NULL,
    PurchaseOrderID_NK     NUMBER(38, 0)    NOT NULL,
    SOR_SK                 NUMBER(38, 0),
    OrderDateID            NUMBER(38, 0),
    DueDateID              NUMBER(38, 0),
    ShipDateID             NUMBER(38, 0),
    OrderQty               SMALLINT         NOT NULL,
    RevisionNumber         NUMBER(3, 0)     DEFAULT 0 NOT NULL,
    Status                 NUMBER(3, 0)     DEFAULT 1 NOT NULL,
    SubTotal               NUMBER(20, 5)    DEFAULT 0.00 NOT NULL,
    Freight                NUMBER(20, 5)    DEFAULT 0.00 NOT NULL,
    TaxAmt                 NUMBER(20, 5)    DEFAULT 0.00 NOT NULL,
    TotalDue               NUMBER(20, 5)    NOT NULL,
    LineTotal              NUMBER(20, 5)    NOT NULL,
    ReceivedQty            NUMBER(8, 2)     NOT NULL,
    StockedQty             NUMBER(9, 2)     NOT NULL,
    DI_JobID               NVARCHAR2(50),
    CreatedDate            TIMESTAMP(6),
    ModifiedDate           TIMESTAMP(6),
    ProductID_SK           NUMBER(38, 0),
    ShipMethodID_SK        NUMBER(38, 0)    NOT NULL,
    ProductVendorID_SK     NUMBER(38, 0),
    GeographyID_SK         NUMBER(38, 0),
    VendorID_SK            NUMBER(38, 0),
    SalesTerritoryID_SK    NUMBER(38, 0)    NOT NULL,
    CONSTRAINT PK14 PRIMARY KEY (PurchaseOrderID_SK)
)
;



-- 
-- TABLE: FactPurchaseOrder_Rejects 
--

CREATE TABLE FactPurchaseOrder_Rejects(
    PurchaseOrderID_SK     NUMBER(38, 0)    NOT NULL,
    OrderDateID            NUMBER(38, 0),
    DueDateID              NUMBER(38, 0),
    ShipDateID             NUMBER(38, 0),
    OrderQty               SMALLINT         NOT NULL,
    RevisionNumber         NUMBER(3, 0)     DEFAULT 0 NOT NULL,
    Status                 NUMBER(3, 0)     DEFAULT 1 NOT NULL,
    SubTotal               NUMBER(20, 5)    DEFAULT 0.00 NOT NULL,
    Freight                NUMBER(20, 5)    DEFAULT 0.00 NOT NULL,
    TaxAmt                 NUMBER(20, 5)    DEFAULT 0.00 NOT NULL,
    TotalDue               NUMBER(20, 5)    NOT NULL,
    LineTotal              NUMBER(20, 5)    NOT NULL,
    RejectedQty            NUMBER(8, 2)     NOT NULL,
    StockedQty             NUMBER(9, 2)     NOT NULL,
    DI_JobID               NVARCHAR2(50),
    CreatedDate            TIMESTAMP(6),
    ModifiedDate           TIMESTAMP(6),
    VendorID_SK            NUMBER(38, 0),
    ProductID_SK           NUMBER(38, 0),
    ShipMethodID_SK        NUMBER(38, 0),
    GeographyID_SK         NUMBER(38, 0),
    SalesTerritoryID_SK    NUMBER(38, 0),
    ProductVendorID_SK     NUMBER(38, 0),
    CONSTRAINT PK14_1 PRIMARY KEY (PurchaseOrderID_SK)
)
;



-- 
-- TABLE: DimEmloyeePay 
--

ALTER TABLE DimEmloyeePay ADD CONSTRAINT RefDimEmployee53 
    FOREIGN KEY (EmployeePay_Durable_SK)
    REFERENCES DimEmployee(EmployeeID_SK)
;


-- 
-- TABLE: DimEmployee 
--

ALTER TABLE DimEmployee ADD CONSTRAINT RefDImGeography19 
    FOREIGN KEY (GeographyID_SK)
    REFERENCES DImGeography(GeographyID_SK)
;

ALTER TABLE DimEmployee ADD CONSTRAINT RefDimVendor27 
    FOREIGN KEY (VendorID_SK)
    REFERENCES DimVendor(VendorID_SK)
;


-- 
-- TABLE: DimProductListPrice 
--

ALTER TABLE DimProductListPrice ADD CONSTRAINT RefDimProduct23 
    FOREIGN KEY (ProductListPrice_Durable_SK)
    REFERENCES DimProduct(ProductID_SK)
;


-- 
-- TABLE: DimProductStandardCost 
--

ALTER TABLE DimProductStandardCost ADD CONSTRAINT RefDimProduct24 
    FOREIGN KEY (ProductStandardCost_Durable_SK)
    REFERENCES DimProduct(ProductID_SK)
;


-- 
-- TABLE: DimProductVendor 
--

ALTER TABLE DimProductVendor ADD CONSTRAINT RefDimProduct10 
    FOREIGN KEY (ProductID_SK)
    REFERENCES DimProduct(ProductID_SK)
;

ALTER TABLE DimProductVendor ADD CONSTRAINT RefDimVendor11 
    FOREIGN KEY (VendorID_SK)
    REFERENCES DimVendor(VendorID_SK)
;


-- 
-- TABLE: DimSalesTerritory 
--

ALTER TABLE DimSalesTerritory ADD CONSTRAINT RefDImGeography6 
    FOREIGN KEY (GeographyID_SK)
    REFERENCES DImGeography(GeographyID_SK)
;


-- 
-- TABLE: DimVendor 
--

ALTER TABLE DimVendor ADD CONSTRAINT RefDImGeography18 
    FOREIGN KEY (GeographyID_SK)
    REFERENCES DImGeography(GeographyID_SK)
;


-- 
-- TABLE: DimVendorContacts 
--

ALTER TABLE DimVendorContacts ADD CONSTRAINT RefDimVendor50 
    FOREIGN KEY (VendorID_SK)
    REFERENCES DimVendor(VendorID_SK)
;


-- 
-- TABLE: Fact_WorkOrder 
--

ALTER TABLE Fact_WorkOrder ADD CONSTRAINT RefDimProduct35 
    FOREIGN KEY (ProductID_SK)
    REFERENCES DimProduct(ProductID_SK)
;

ALTER TABLE Fact_WorkOrder ADD CONSTRAINT RefDimScrapReason51 
    FOREIGN KEY (ScrapReasonID_SK)
    REFERENCES DimScrapReason(ScrapReasonID_SK)
;


-- 
-- TABLE: Fact_WorkOrder_Rejects 
--

ALTER TABLE Fact_WorkOrder_Rejects ADD CONSTRAINT RefDimProduct36 
    FOREIGN KEY (ProductID_SK)
    REFERENCES DimProduct(ProductID_SK)
;

ALTER TABLE Fact_WorkOrder_Rejects ADD CONSTRAINT RefDimScrapReason52 
    FOREIGN KEY (ScrapReasonID_SK)
    REFERENCES DimScrapReason(ScrapReasonID_SK)
;


-- 
-- TABLE: Fact_WorkOrderRouting 
--

ALTER TABLE Fact_WorkOrderRouting ADD CONSTRAINT RefFact_WorkOrder37 
    FOREIGN KEY (WorkOrderID_SK)
    REFERENCES Fact_WorkOrder(WorkOrderID_SK)
;

ALTER TABLE Fact_WorkOrderRouting ADD CONSTRAINT RefDimLocation40 
    FOREIGN KEY (LocationID_SK)
    REFERENCES DimLocation(LocationID_SK)
;


-- 
-- TABLE: Fact_WorkOrderRouting_Rejects 
--

ALTER TABLE Fact_WorkOrderRouting_Rejects ADD CONSTRAINT RefDimLocation39 
    FOREIGN KEY (LocationID_SK)
    REFERENCES DimLocation(LocationID_SK)
;

ALTER TABLE Fact_WorkOrderRouting_Rejects ADD CONSTRAINT RefFact_WorkOrder54 
    FOREIGN KEY (WorkOrderID_SK)
    REFERENCES Fact_WorkOrder(WorkOrderID_SK)
;


-- 
-- TABLE: FactInventory 
--

ALTER TABLE FactInventory ADD CONSTRAINT RefDimLocation20 
    FOREIGN KEY (LocationID_SK)
    REFERENCES DimLocation(LocationID_SK)
;

ALTER TABLE FactInventory ADD CONSTRAINT RefDimDate21 
    FOREIGN KEY (DateID_SK)
    REFERENCES DimDate(DateID_SK)
;

ALTER TABLE FactInventory ADD CONSTRAINT RefDimProduct22 
    FOREIGN KEY (ProductID_SK)
    REFERENCES DimProduct(ProductID_SK)
;


-- 
-- TABLE: FactPurchaseOrder 
--

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimProduct5 
    FOREIGN KEY (ProductID_SK)
    REFERENCES DimProduct(ProductID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimShipMethod8 
    FOREIGN KEY (ShipMethodID_SK)
    REFERENCES DimShipMethod(ShipMethodID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimProductVendor9 
    FOREIGN KEY (ProductVendorID_SK)
    REFERENCES DimProductVendor(ProductVendorID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDImGeography13 
    FOREIGN KEY (GeographyID_SK)
    REFERENCES DImGeography(GeographyID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimDate14 
    FOREIGN KEY (ShipDateID)
    REFERENCES DimDate(DateID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimDate16 
    FOREIGN KEY (DueDateID)
    REFERENCES DimDate(DateID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimDate17 
    FOREIGN KEY (OrderDateID)
    REFERENCES DimDate(DateID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimVendor26 
    FOREIGN KEY (VendorID_SK)
    REFERENCES DimVendor(VendorID_SK)
;

ALTER TABLE FactPurchaseOrder ADD CONSTRAINT RefDimSalesTerritory34 
    FOREIGN KEY (SalesTerritoryID_SK)
    REFERENCES DimSalesTerritory(SalesTerritoryID_SK)
;


-- 
-- TABLE: FactPurchaseOrder_Rejects 
--

ALTER TABLE FactPurchaseOrder_Rejects ADD CONSTRAINT RefDimVendor42 
    FOREIGN KEY (VendorID_SK)
    REFERENCES DimVendor(VendorID_SK)
;

ALTER TABLE FactPurchaseOrder_Rejects ADD CONSTRAINT RefDimProduct43 
    FOREIGN KEY (ProductID_SK)
    REFERENCES DimProduct(ProductID_SK)
;

ALTER TABLE FactPurchaseOrder_Rejects ADD CONSTRAINT RefDimShipMethod44 
    FOREIGN KEY (ShipMethodID_SK)
    REFERENCES DimShipMethod(ShipMethodID_SK)
;

ALTER TABLE FactPurchaseOrder_Rejects ADD CONSTRAINT RefDImGeography45 
    FOREIGN KEY (GeographyID_SK)
    REFERENCES DImGeography(GeographyID_SK)
;

ALTER TABLE FactPurchaseOrder_Rejects ADD CONSTRAINT RefDimSalesTerritory46 
    FOREIGN KEY (SalesTerritoryID_SK)
    REFERENCES DimSalesTerritory(SalesTerritoryID_SK)
;

ALTER TABLE FactPurchaseOrder_Rejects ADD CONSTRAINT RefDimProductVendor47 
    FOREIGN KEY (ProductVendorID_SK)
    REFERENCES DimProductVendor(ProductVendorID_SK)
;


