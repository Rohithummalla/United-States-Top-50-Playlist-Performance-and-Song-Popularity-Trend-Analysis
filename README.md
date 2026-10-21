
# 🎵 United States Top 50 Playlist Performance and Song Popularity Trend Analysis

An end-to-end data analytics project that explores music chart performance, song popularity, ranking trends, and artist dominance using SQL, Python, Pandas, Plotly, and Streamlit.

## 📌 Project Overview

Music charts provide valuable insights into listener preferences, song performance, and changing music trends. This project analyzes historical data from the United States Top 50 playlist to understand how songs perform over time, which artists maintain a strong chart presence, and how playlist rankings relate to popularity.

The project combines SQL-based data analysis, exploratory data analysis (EDA), key performance indicators (KPIs), and an interactive Streamlit dashboard to transform raw playlist data into meaningful insights.

## 🎯 Project Objectives

- Analyze historical trends in song rankings and popularity.
- Identify songs with the longest chart presence.
- Evaluate average rank, best rank, and ranking volatility.
- Identify artists with the strongest playlist presence.
- Explore relationships between popularity and chart position.
- Compare song characteristics and their relationship with performance.
- Build an interactive dashboard for data exploration and visualization.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| SQL | Data querying, aggregation, and analytical calculations |
| Python | Data processing and analysis |
| Pandas | Data cleaning and manipulation |
| NumPy | Numerical operations |
| Plotly | Interactive data visualizations |
| Streamlit | Interactive analytics dashboard |
| Git & GitHub | Version control and project hosting |
| Google Colab | Cloud-based development and execution |

## 📊 Key Performance Indicators (KPIs)

The project focuses on the following metrics:

- **Charting Days:** Number of distinct dates a song appears in the playlist.
- **Best Rank:** Highest position achieved by a song, where rank 1 is the best.
- **Average Rank:** Mean playlist position across observed dates.
- **Rank Volatility:** Standard deviation of a song's playlist position.
- **Average Popularity:** Mean popularity score across observations.
- **Artist Dominance:** Measures of artist presence, including chart appearances and unique songs.
- **Song Persistence:** How consistently a song remains on the chart over the analysis period.

*Note: KPI values depend on the selected date range, available dataset fields, and dashboard filters.*

## 📈 Dashboard Features

The Streamlit dashboard is designed to provide an interactive view of playlist performance.

### 1. Interactive Filters
- Filter by date range.
- Select individual artists and songs.
- Explore selected playlist rank ranges.
- Filter by album type when the relevant field is available.

### 2. Popularity Trend Analysis
Visualizes changes in average song popularity over time.

### 3. Song Ranking Trends
Tracks how selected songs move up or down the playlist across observation dates.

### 4. Artist Performance Leaderboard
Compares artists using metrics such as chart activity, unique songs, average rank, and average popularity.

### 5. Popularity vs. Rank
Explores the relationship between a song's popularity score and its playlist position.

### 6. Content Attribute Analysis
Where the relevant data is available, compares song performance by attributes such as explicit content, album type, and track duration.

### 7. Filtered Data Export
Allows users to download the filtered dataset as a CSV file for further analysis.

## 🗂️ Project Structure

```text
us-top-50-playlist-analysis/
│
├── app.py                  # Streamlit dashboard
├── requirements.txt        # Python dependencies
├── README.md               # Project documentation
├── playlist_cleaned.csv    # Cleaned dataset (if permitted)
├── sql/                    # SQL queries and analysis
├── reports/                # Research paper and project report
└── screenshots/            # Dashboard screenshots
```

*The `sql/`, `reports/`, and `screenshots/` folders are suggested organizational folders; add them as you create those project materials.*

## 🚀 Getting Started

Follow these steps to run the dashboard on your local machine.

### Prerequisites

- Python 3.10 or a compatible Python version.
- pip package manager.
- The cleaned playlist dataset.
- Git (optional, for cloning the repository).

### Step 1: Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/us-top-50-playlist-analysis.git
```

Navigate into the project folder:

```bash
cd us-top-50-playlist-analysis
```

Replace `YOUR-USERNAME` with your GitHub username.

### Step 2: Create a Virtual Environment (Recommended)

```bash
python -m venv venv
```

Activate it on Windows:

```bash
venv\Scripts\activate
```

On macOS or Linux:

```bash
source venv/bin/activate
```

### Step 3: Install Dependencies

```bash
pip install -r requirements.txt
```

### Step 4: Configure the Dataset

Place your cleaned CSV file in the project directory.

Ensure the dataset filename and file path match the configuration in `app.py`. If your dashboard currently uses `/content/playlist_cleaned.csv`, update that path for local execution.

### Step 5: Run the Dashboard

```bash
streamlit run app.py
```

Open the local URL displayed in your terminal, typically `http://localhost:8501`.

## 📦 Requirements

Create a `requirements.txt` file containing:

```text
streamlit
pandas
numpy
plotly
```

For reproducible deployments, consider pinning the package versions after confirming which versions work with your application.

## 🔍 Analytical Approach

The project follows a structured data analytics workflow:

1. **Data preparation:** Clean the dataset, handle missing values, and convert columns to appropriate data types.
2. **Exploratory data analysis:** Examine distributions, date coverage, ranking patterns, and artist representation.
3. **SQL analysis:** Calculate aggregates and performance metrics using SQL queries.
4. **KPI development:** Measure chart persistence, ranking performance, popularity, and artist activity.
5. **Visualization:** Build interactive charts to communicate trends and comparisons.
6. **Dashboard development:** Integrate analytical results into a Streamlit application.
7. **Interpretation:** Use the results to identify patterns and answer the project's analytical questions.

## 💡 Business Questions

This project aims to answer questions such as:

- Which songs remained on the playlist for the longest period?
- Which tracks achieved the best chart positions?
- Which artists had the greatest presence in the Top 50 playlist?
- How did song rankings change over time?
- Is popularity associated with a better playlist position?
- Which songs exhibited the most stable or volatile rankings?
- How do available song characteristics compare across performance metrics?

## 📌 Key Findings

*Add your actual findings here after completing your analysis.*

Examples of findings to investigate:

- Songs with the longest charting duration.
- Artists with the most distinct songs in the dataset.
- Tracks with the best peak ranking.
- Relationships between popularity and playlist position.
- Differences in ranking stability across songs.

Avoid adding numerical conclusions until they have been verified against your dataset and SQL results.

## 🔮 Future Enhancements

- Add advanced time-series analysis and forecasting.
- Develop an artist dominance score.
- Include song-level rank volatility comparisons.
- Add automated insights based on user-selected filters.
- Deploy the dashboard using Streamlit Community Cloud.
- Integrate a database for scalable data storage and querying.
- Add a research report with documented methodology and findings.

## ⚠️ Data and Reproducibility Notes

- Analysis results depend on the dataset's coverage, update frequency, and data quality.
- Playlist rank and popularity are distinct metrics and should not be treated as interchangeable.
- Charting duration represents observed appearances in the available dataset, not necessarily uninterrupted time on the chart.
- Include the dataset in the repository only if its license and source terms permit redistribution.
- Do not commit API keys, credentials, or other sensitive information.

## 👨‍💻 Author

**Rohith**

Aspiring Data Analyst | SQL | Python | Data Visualization | Streamlit

GitHub: [Rohithummalla](https://github.com/Rohithummalla)

## 📄 License

Add a license if you intend to distribute this project for reuse. If the dataset has separate licensing terms, follow those terms independently.

---

⭐ If you find this project useful, consider starring the repository.
