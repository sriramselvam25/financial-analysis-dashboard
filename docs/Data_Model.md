# Data Model — Project 5

## Star schema
**FactFinancial** stores monthly synthetic financial observations by business unit.

Dimensions:
- **DimDate** → Month, Quarter, Year
- **DimBusinessUnit** → BusinessUnit
- **DimScenario** → Actual / Budget / Forecast (optional unpivoted model)

## Grain
One business-unit financial observation per month.

## Modelling option
For flexible Actual/Budget/Forecast visuals, unpivot the three revenue scenario columns in Power Query into Scenario and Amount. Keep COGS and OperatingExpense as actual financial components.
