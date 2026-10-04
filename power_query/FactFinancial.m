let
    Source = Csv.Document(File.Contents(ParameterDataPath & "FactFinancial.csv"),[Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source,[PromoteAllScalars=true]),
    Types = Table.TransformColumnTypes(Headers,{{"Month", type date},{"BusinessUnit", type text},{"Revenue", Currency.Type},{"COGS", Currency.Type},{"OperatingExpense", Currency.Type},{"BudgetRevenue", Currency.Type},{"ForecastRevenue", Currency.Type}}),
    GrossProfit = Table.AddColumn(Types,"GrossProfit", each [Revenue]-[COGS], Currency.Type),
    OperatingProfit = Table.AddColumn(GrossProfit,"OperatingProfit", each [GrossProfit]-[OperatingExpense], Currency.Type),
    BudgetVariance = Table.AddColumn(OperatingProfit,"BudgetVariance", each [Revenue]-[BudgetRevenue], Currency.Type)
in
    BudgetVariance
