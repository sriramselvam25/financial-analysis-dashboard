"""Generate deterministic synthetic financial-performance data for Project 5."""
import csv, random
from datetime import date
random.seed(505)
units=["Consumer","Enterprise","Digital","Services","International"]
with open("FactFinancial.csv","w",newline="") as f:
 w=csv.writer(f); w.writerow(["Month","BusinessUnit","Revenue","COGS","OperatingExpense","BudgetRevenue","ForecastRevenue"])
 for y in [2024,2025]:
  for m in range(1,13):
   for u in units:
    base=random.uniform(4_000_000,14_000_000)*(1.09 if y==2025 else 1)*(1.10 if m in [10,11,12] else 1)
    rev=round(base,2); budget=round(rev*random.uniform(.94,1.08),2); forecast=round(rev*random.uniform(.96,1.05),2)
    w.writerow([date(y,m,1),u,rev,round(rev*random.uniform(.48,.68),2),round(rev*random.uniform(.16,.27),2),budget,forecast])
print("Generated 120 synthetic monthly business-unit rows.")
