# 🎵 United States Top 50 Playlist Performance and Song Popularity Trend Analysis
<img width="1920" height="1080" alt="Screenshot 2026-10-21 123631" src="https://github.com/user-attachments/assets/076b1e29-276d-4472-b30a-450420f5fb8e" />

An end-to-end data analytics project exploring song rankings, popularity trends, chart persistence, and artist performance using SQL, Python, and an interactive Streamlit dashboard.

## 📌 Project Overview

This project analyzes historical data from the United States Top 50 playlist to uncover patterns in song performance, popularity, ranking movements, and artist dominance.

By combining SQL-based analysis, exploratory data analysis (EDA), data visualization, and interactive dashboard development, this project transforms raw playlist data into actionable insights.

## 🎯 Project Objectives

- Analyze song ranking and popularity trends over time.
- Identify songs with the longest chart presence.
- Evaluate average rank, best rank, and ranking volatility.
- Measure artist performance and playlist dominance.
- Explore the relationship between popularity and playlist position.
- Compare song characteristics with performance metrics.
- Develop an interactive dashboard for music data exploration.

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| SQL | Data querying and analytical calculations |
| Python | Data analysis and processing |
| Pandas | Data cleaning and manipulation |
| NumPy | Numerical operations |
| Plotly | Interactive visualizations |
| Streamlit | Interactive dashboard development |
| Git & GitHub | Version control and project hosting |
| Google Colab | Cloud-based development |

## 📊 Key Performance Indicators

- **Charting Days:** Number of distinct dates a song appears in the dataset.
- **Best Rank:** Highest position achieved by a song, with rank 1 being the best.
- **Average Rank:** Mean playlist position across observations.
- **Rank Volatility:** Standard deviation of playlist positions.
- **Average Popularity:** Average recorded popularity score.
- **Artist Dominance:** Artist presence measured through chart appearances and unique songs.
- **Song Persistence:** Duration of a song's observed presence in the playlist.

## 📈 Dashboard Features

### 1. Interactive Filters
Filter playlist data by date range, artist, song, rank, and album type when available.

### 2. Popularity Trend Analysis
Explore how average song popularity changes across observation dates.

### 3. Song Ranking Trends
Track changes in playlist positions over time.

### 4. Artist Performance Leaderboard
Compare artists by unique songs, chart activity, average rank, and average popularity.

### 5. Popularity vs. Rank
Investigate the relationship between popularity scores and playlist positions.

### 6. Song Attribute Analysis
Compare performance by available attributes such as explicit content, album type, and song duration.

### 7. Data Export
Download filtered playlist data as a CSV file for further analysis.

## 🗂️ Project Structure

```text
United-States-Top-50-Playlist-Performance-and-Song-Popularity-Trend-Analysis/
│
├── app.py
├── requirements.txt
├── README.md
├── playlist_cleaned.csv
├── sql/
├── reports/
└── screenshots/
```

*The `sql`, `reports`, and `screenshots` folders are suggested additions for organizing your project deliverables.*

## 🚀 Installation and Setup

### Prerequisites

- Python 3.10 or a compatible version
- pip package manager
- Cleaned playlist dataset

### Step 1: Clone the Repository

```bash
git clone https://github.com/Rohithummalla/United-States-Top-50-Playlist-Performance-and-Song-Popularity-Trend-Analysis
cd United-States-Top-50-Playlist-Performance-and-Song-Popularity-Trend-Analysis
```

### Step 2: Create a Virtual Environment

```bash
python -m venv venv
```

Activate on Windows:

```bash
venv\Scripts\activate
```

Activate on macOS/Linux:

```bash
source venv/bin/activate
```

### Step 3: Install Dependencies

```bash
pip install -r requirements.txt
```

### Step 4: Configure the Dataset

Place the cleaned CSV file in the project directory and ensure the path in `app.py` points to the correct location.

### Step 5: Run the Dashboard

```bash
streamlit run app.py
```

Open the local URL displayed in the terminal, usually `http://localhost:8501`.

## 📦 Requirements

The `requirements.txt` file should contain:

```text
streamlit
pandas
numpy
plotly
```

## 🔍 Analytical Workflow

1. Data cleaning and preprocessing.
2. Exploratory data analysis.
3. SQL-based aggregations and performance analysis.
4. KPI calculation and comparison.
5. Interactive visualization development.
6. Streamlit dashboard integration.
7. Interpretation and documentation of findings.

## 💡 Business Questions

- Which songs stayed on the playlist for the longest time?
- Which tracks achieved the best peak positions?
- Which artists had the strongest playlist presence?
- How did song rankings change over time?
- How are popularity scores related to playlist positions?
- Which songs experienced the greatest ranking volatility?
- How do available song attributes relate to performance?

## 📌 Key Findings

*Add verified findings from your SQL queries and dashboard here.*

Potential findings to investigate include the longest-charting songs, artists with the most unique tracks, songs with the best peak ranks, and relationships between popularity and chart position.

## 🔮 Future Enhancements

- Add time-series analysis and forecasting.
- Develop an artist dominance score.
- Include more advanced ranking stability metrics.
- Generate automated insights from dashboard filters.
- Deploy the dashboard using Streamlit Community Cloud.
- Integrate a database for scalable analysis.
- Publish a research paper and executive summary.

## ⚠️ Data Notes

- Results depend on the dataset's coverage and quality.
- Popularity and playlist position represent different metrics.
- Charting days count distinct observed dates and do not necessarily imply uninterrupted chart presence.
- Redistribute the dataset only if its licensing terms permit it.
- Never commit credentials, tokens, or other sensitive information.

## 👨‍💻 Author

**Rohith Ummalla**

Aspiring Data Analyst | SQL | Python | Data Visualization | Streamlit

- **GitHub:** [github.com/Rohithummalla](https://github.com/Rohithummalla)
- **Project Repository:** [United-States-Top-50-Playlist-Performance-and-Song-Popularity-Trend-Analysis](https://github.com/Rohithummalla/United-States-Top-50-Playlist-Performance-and-Song-Popularity-Trend-Analysis)

## 📄 License

Add a suitable license if you intend to allow others to reuse or modify your code. Check the dataset's licensing terms separately.

---

⭐ If you find this project interesting, consider starring the repository.
