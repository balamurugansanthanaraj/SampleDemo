create table InternetOrders (
	OrderId int identity primary key,
	OrderDate datetime,
	CustomerId int,
	BillingAddress nvarchar(255),
	ShippingAddress nvarchar(255),
	ProductId int,
	Units int,
	Amount int,
	Remarks nvarchar(255)
)
go


set statistics io on
set statistics time on

select OrderId, OrderDate, BillingAddress, Units, Amount from InternetOrders
	where BillingAddress = 'Oklahoma';

set statistics io off
set statistics time off


set statistics io on
set statistics time on

select BillingAddress, Sum(Units), Sum(Amount)
	from InternetOrders
	group by BillingAddress
	order by BillingAddress;

set statistics io off
set statistics time off

exec sp_help [dbo.InternetOrders];

