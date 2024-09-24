# Background

This project aimed to address the challenges faced by the sales team at a fictional bicycle company ([AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms)) in generating and analysing sales reports. By transitioning from static reports to interactive dashboards, the goal was to provide a more comprehensive and actionable view of sales performance.

## Email sent from Sales Manager

Hi Adam

I hope you are well, we need to **improve our internet sales reports** and want to move from static reports to **visual dashboards**

Essentially, we want to focus it on how much we have **sold of what products**, **to which clients** and **how it has been over time**

Seeing as each **sales person** works on different products and customers it would be beneficial to be able to **filter them too**

We measure our numbers against **budget** so I added that in a **spreadsheet** so we can compare our values against performance

The budget is in for 2024 and we usually look **2 years back in time** when we do analysis of sales.

Let me know if you need anything, 

Mr. Data McDatabase

The existing reporting methods were time-consuming, lacked visual appeal, and limited insights into key performance indicators (KPIs). The sales team struggled to track sales trends, identify top-performing products and customers, and measure performance against budget. I analysed the business demand and developed user stories to help to produce my dashboard

## Business Demand

Reporter: Data McDatabase (Sales Manager)

Value of Change: Visual Dashboard and improved Sales reporting 

Necessary Systems: PowerBI, CRM System

Other Relevant Information:  Budgets have been delivered in Excel for 2021

## User stories

| No | As a (Role) | I want (request/demand) | So that I can (User Value) | Acceptance Crieria |
| --- | --- | --- | --- | --- |
| 1 | Sales Manger | To get a dashboard overview of internet sales | Can follow which customers and products sell the best | A PowerBI dashboard which updated once a day |
| 2 | Sales Representative | A detailed overview of internet sales per customer | Can follow up my customers that buy the most and who we can sell more too | A PowerBI dashboard whichallows me to filter data for each customer |
| 3 | Sales Representative | A detailed overview of internet sales per product | Can follow up my products that sell the most | A PowerBI dashboard whichallows me to filter data for each product  |
| 4 | Sales Manager | A dashboad overview of internet sales | Follow sales over time against budget | A dashboard with graphs and KPIs comparing against budget |
