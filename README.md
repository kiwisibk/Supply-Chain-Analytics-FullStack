# Supply Chain Performance & Logistics Analytics

This project provides a deep dive into supply chain efficiency, focusing on delivery reliability and revenue trends. It has been optimized for portability and real-world data consistency.

---

## 📊 Dashboard Highlights: US Market Logistics
The dashboard visualizes key performance indicators (KPIs) for the North American market, specifically analyzing delivery risks and financial outcomes.

### Key Features:
* **Late Delivery Rate:** Identification of high-risk product categories and cities.
* **Revenue Analysis:** Deep dive into "Total Revenue" by category and region.
* **Geographical Insights:** Visual mapping of customer locations and their delivery status.

**Dashboard Preview:**
![Supply Chain Dashboard](dashboard_v2_supplychain.png) 
*(Note: Replace with your actual filename if different)*

---

## 🌐 Cloud-Integrated Data Pipeline
To ensure maximum portability, this project uses a modern data architecture that removes local file dependencies.

### Technical Implementation:
* **GitHub-Hosted Data:** The dashboard fetches its source data directly from this GitHub repository using `Web.Contents` in Power Query.
* **Zero-Configuration Refresh:** Anyone who clones this repository can click "Refresh" in Power BI and the data will load instantly without needing to fix file paths.
* **Robust M-Code:** * Implemented `en-US` culture settings to ensure decimal numbers (Revenue) are handled correctly on all systems.
    * Dynamically handled column promotions to increase query stability.
* **Data Consistency:** The header and visualizations were updated to reflect **US Market** data, ensuring alignment between titles and the underlying city/state data.

---

## ⚙️ How to Run
1. **Clone the repository.**
2. **Open the file:** Launch `Supply_Chain_Analysis.pbix` (or your specific filename) in Power BI Desktop.
3. **Refresh:** Simply click the **Refresh** button on the Home ribbon. No local CSV setup is required.

---

## 🛠️ Tech Stack
* **Power BI:** Data visualization and UX design.
* **Power Query (M):** Data transformation and Web-API integration.
* **GitHub:** Data hosting and version control.
