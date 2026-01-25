# Supply Chain Performance & Logistics Analytics

This project provides a comprehensive analysis of supply chain efficiency, focusing on delivery reliability and revenue trends. It has been specifically optimized for portability and data consistency within the North American market.

---

## 📊 Dashboard Highlights: US Market Logistics
The dashboard visualizes key performance indicators (KPIs) to identify bottlenecks in the logistics chain. By aligning the UI with the underlying data, the analysis focuses on US-based operations.

### Key Features:
* **Late Delivery Rate:** Real-time identification of high-risk product categories and cities (e.g., Albany, Albuquerque).
* **Revenue Analytics:** Deep dive into "Total Revenue" across different product segments.
* **Geographical Insights:** Visual mapping of customer locations and their respective delivery statuses.
* **Order Status Tracking:** Breakdown of shipping types and their impact on delivery speed.

**Dashboard Preview:**
![Supply Chain Dashboard](dashboard_preview.png)

---

## 🌐 Cloud-Integrated Data Pipeline
To ensure maximum portability and "out-of-the-box" functionality, this project utilizes a modern cloud-data architecture.

### Technical Implementation (Power Query / M):
* **GitHub-Hosted Data:** The source CSV is hosted directly within this GitHub repository. The dashboard fetches data via `Web.Contents`, removing all local file dependencies.
* **Zero-Configuration Refresh:** External users can clone this repository and refresh the data immediately without adjusting file paths.
* **Robust Data Typing:** * Implemented explicit `en-US` culture settings in the `Table.TransformColumnTypes` step to ensure numeric values (like Revenue) are processed correctly regardless of the user's local system language.
    * Dynamic column handling to ensure stability if the source structure changes slightly.
* **Data Validation:** Corrected the analysis scope from Europe to the **US Market** to ensure 100% accuracy between visual labels and the actual data rows.

---

## ⚙️ How to Run
1. **Clone this repository** to your local machine.
2. **Open the Power BI file:** Launch `Supply_Chain_Analysis.pbix` (or your specific filename).
3. **Refresh the data:** Click the **Refresh** button on the Home ribbon. Power BI will automatically stream the latest CSV data from GitHub.

---

## 🛠️ Tech Stack
* **Power BI Desktop:** Advanced data visualization and UI/UX design.
* **Power Query (M):** ETL processes and Web-API integration.
* **GitHub:** Hosting the data pipeline and version control.

---
*Developed as part of a Data Analytics Portfolio to demonstrate expertise in Cloud Data Integration and Logistics Reporting.*
