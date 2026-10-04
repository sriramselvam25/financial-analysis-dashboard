# Financial Performance & Forecast Analytics — Power BI Dashboard Build Specification

## Visual direction
Theme: **Executive Finance**

Palette: Navy #0F172A · Emerald #10B981 · Cyan #06B6D4 · Gold #F59E0B · Red #EF4444

Typography: Segoe UI / Aptos. Use 28–32 px page titles, 22–28 px KPI values, 12–14 px chart titles and 10–12 px labels. Maintain consistent spacing and alignment across all pages.

## Canvas system
- 16:9 report canvas
- Header: page title, context subtitle, last-refresh indicator
- Filter rail: date + project-specific dimensions
- KPI row: six primary cards with variance/status badges
- Main analytical zone: 2–4 high-value visuals per page
- Insight strip: concise interpretation / recommended action
- Footer: synthetic-data disclosure

## KPIs
- Revenue
- Gross Profit
- Operating Profit
- Gross Margin %
- Budget Variance %
- Forecast Accuracy %

## Pages
### 1. Financial Executive Summary
Executive KPI row plus primary trend, contribution and exception visuals.

### 2. Revenue & Margin
Diagnostic views with selectable categories, comparison states and contextual tooltips.

### 3. Cost & Budget Analysis
Detailed performance views with drill-down, ranking and contribution analysis.

### 4. Forecast & Scenario Outlook
Forward/action-oriented views combining trends, drivers, risks and recommendations.

## Visual inventory
- Actual vs budget monthly timeline
- P&L waterfall
- Revenue/margin combo chart
- Cost composition stacked bars
- Business-unit performance matrix
- Forecast fan/scenario trend

## Interaction requirements
1. Selecting a visual category cross-filters relevant visuals on the page.
2. Hover/tap tooltips show current value, comparison value, variance and context.
3. Drill-through retains filter context.
4. Date slicers synchronize across report pages where appropriate.
5. KPI cards show directional icons plus text status; do not rely on color alone.
6. Timeline charts use a consistent time grain and expose month/quarter/year hierarchy.
7. Reset Filters returns the page to the designed default state.

## Visual consistency rules
- Use the theme palette consistently but give each series a stable semantic role.
- Limit chart clutter; prioritize direct labels where readable.
- Use playful shapes/accents in headers and section separators, not behind dense data.
- Preserve whitespace around KPI cards and charts.
- Keep decimal precision consistent by metric type.
- Use the same font family, corner radius and tooltip layout across the report.
- Negative finance/attrition/risk states receive explicit warning labels as well as color.

## Report narrative
Connect P&L performance, budget control and forward-looking forecasts in one executive decision view.
