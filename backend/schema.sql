-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/bUCHSk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE Customer (
    CustomerID  SERIAL  NOT NULL,
    UserName TEXT NOT NULL,
    pword TEXT NOT NULL,
    FullName TEXT NOT NULL,
    Address1 TEXT NOT NULL,
    City TEXT NOT NULL,
    usState TEXT NOT NULL,
    CONSTRAINT pk_Customer PRIMARY KEY (
        CustomerID
     )
);

CREATE TABLE ListedItems (
    ItemID  SERIAL  NOT NULL,
    SellerID int   NOT NULL,
    Title TEXT   NOT NULL,
    Description TEXT NOT NULL,
    CONSTRAINT pk_ListedItems PRIMARY KEY (
        ItemID
     )
);

CREATE TABLE Orders (
    OrderID SERIAL  NOT NULL,
    ItemId int   NOT NULL,
    SellerID int   NOT NULL,
    BuyerID int   NOT NULL,
    TotalAmount money,
    OrderStatusID int   NOT NULL,
    -- RENTAL OR SALE 1 or 0
    TransactionType int   NOT NULL,
    Quantity INT NOT NULL,
    RentalLength date NULL,
    Overdue bool NOT NULL,
    Quantity int   NOT NULL,
    CONSTRAINT pk_Orders PRIMARY KEY (
        OrderID
     )
);


ALTER TABLE ListedItems ADD CONSTRAINT fk_ListedItems_SellerID FOREIGN KEY(SellerID)
REFERENCES Customer (CustomerID);

ALTER TABLE Orders ADD CONSTRAINT fk_Orders_ItemId FOREIGN KEY(ItemId)
REFERENCES ListedItems (ItemID);

ALTER TABLE Orders ADD CONSTRAINT fk_Orders_SellerID FOREIGN KEY(SellerID)
REFERENCES Customer (CustomerID);

ALTER TABLE Orders ADD CONSTRAINT fk_Orders_BuyerID FOREIGN KEY(BuyerID)
REFERENCES Customer (CustomerID);

CREATE INDEX idx_Customer_FullName
ON Customer (FullName);