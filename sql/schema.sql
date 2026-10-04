CREATE TABLE FactFinancial (Month date, BusinessUnit varchar(50), Revenue decimal(18,2), COGS decimal(18,2), OperatingExpense decimal(18,2), BudgetRevenue decimal(18,2), ForecastRevenue decimal(18,2));
CREATE INDEX IX_Financial_Month ON FactFinancial(Month);
CREATE INDEX IX_Financial_Unit ON FactFinancial(BusinessUnit);
