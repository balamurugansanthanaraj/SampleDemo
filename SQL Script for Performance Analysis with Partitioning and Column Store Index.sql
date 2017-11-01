USE [OrdersDB]
GO

CREATE NONCLUSTERED INDEX IX_BillingAddress
ON [dbo].[InternetOrders] ([BillingAddress])
INCLUDE ([OrderDate],[CustomerId],[ShippingAddress],[ProductId],[Units],[Amount],[Remarks])
GO

