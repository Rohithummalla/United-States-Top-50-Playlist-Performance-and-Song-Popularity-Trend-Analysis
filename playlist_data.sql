USE playlist_analysis;

-- Check the table columns
DESCRIBE playlist_data;

-- Check sample records
SELECT *
FROM playlist_data
LIMIT 10;

### 1. Find the total number of records.?

-- Total records in the Spotify dataset
SELECT COUNT(*) AS total_records
FROM playlist_data;

### 2. Find the number of unique songs.?

-- Count unique song and artist combinations
SELECT COUNT(*) AS unique_songs
FROM (
    SELECT DISTINCT song, artist
    FROM playlist_data
) AS songs;

### 3. Find the number of unique artists ?

-- Count unique artists in the dataset
SELECT COUNT(DISTINCT artist) AS unique_artists
FROM playlist_data;

### 4. Check for missing values

-- Identify records with missing song, artist, or popularity
SELECT *
FROM playlist_data
WHERE song IS NULL
   OR artist IS NULL
   OR popularity IS NULL;
   
### 5. Validate playlist positions

-- Playlist positions should be between 1 and 50
SELECT *
FROM playlist_data
WHERE position < 1
   OR position > 50;
   
			#### Song popularity analysis ----------
            
 ### 6. Find the top 10 most popular songs  
 
 -- Identify the most popular songs in the playlist
SELECT
    song,
    artist,
    ROUND(AVG(popularity), 2) AS avg_popularity
FROM playlist_data
GROUP BY song, artist
ORDER BY avg_popularity DESC
LIMIT 10;

### 7. Find songs with the lowest average popularity

-- Identify songs with lower average popularity
SELECT song,artist,
    ROUND(AVG(popularity), 2) AS avg_popularity
FROM playlist_data
GROUP BY song, artist
ORDER BY avg_popularity ASC
LIMIT 10;

### 8. Calculate overall average popularity

-- Calculate the average popularity of all records
SELECT
    ROUND(AVG(popularity), 2) AS overall_avg_popularity,
    MAX(popularity) AS highest_popularity,
    MIN(popularity) AS lowest_popularity
FROM playlist_data;

         ####### Artist performance analysis ------------------

### 9. Find the top 10 artists by playlist appearances

-- Identify artists with the most playlist appearances
SELECT
    artist,
    COUNT(*) AS total_appearances,
    COUNT(DISTINCT song) AS unique_songs
FROM playlist_data
GROUP BY artist
ORDER BY total_appearances DESC
LIMIT 10;

### 10. Compare artist popularity and average rank

-- Evaluate artist popularity and playlist ranking
SELECT
    artist,
    COUNT(*) AS appearances,
    ROUND(AVG(popularity), 2) AS avg_popularity,
    ROUND(AVG(position), 2) AS avg_position,
    MIN(position) AS best_position
FROM playlist_data
GROUP BY artist
HAVING COUNT(*) >= 5
ORDER BY avg_position ASC
LIMIT 10;

    ###### Playlist trends over time ---------------------
    
  ### 11. Analyze daily popularity trends ?
  -- Track average popularity by date
SELECT
    date,
    COUNT(*) AS total_records,
    ROUND(AVG(popularity), 2) AS avg_popularity
FROM playlist_data
GROUP BY date
ORDER BY date;

#### 12. Find songs that appeared on the playlist most often 

-- Count the number of distinct dates each song appeared
SELECT
    song,
    artist,
    COUNT(DISTINCT date) AS days_on_playlist,
    ROUND(AVG(position), 2) AS avg_position
FROM playlist_data
GROUP BY song, artist
ORDER BY days_on_playlist DESC
LIMIT 10;

### 13. Calculate rank volatility

-- Measure variation in playlist positions
SELECT
    song,
    artist,
    COUNT(*) AS observations,
    ROUND(STDDEV_SAMP(position), 2) AS rank_volatility
FROM playlist_data
GROUP BY song, artist
HAVING COUNT(*) >= 2
ORDER BY rank_volatility DESC
LIMIT 10;

### 14. Analyze song duration

-- Analyze average song duration in minutes
SELECT
    ROUND(AVG(duration_ms) / 60000, 2)
        AS avg_duration_minutes,
    ROUND(MIN(duration_ms) / 60000, 2)
        AS shortest_song_minutes,
    ROUND(MAX(duration_ms) / 60000, 2)
        AS longest_song_minutes
FROM playlist_data
WHERE duration_ms > 0;

### 15: Find the top 3 songs for each artist ?

-- Rank each artist's songs by average popularity
WITH song_summary AS (
    SELECT
        artist,
        song,
        AVG(popularity) AS avg_popularity
    FROM playlist_data
    GROUP BY artist, song
),
ranked_songs AS (
    SELECT
        artist,
        song,
        avg_popularity,
        ROW_NUMBER() OVER (
            PARTITION BY artist
            ORDER BY avg_popularity DESC, song
        ) AS song_rank
    FROM song_summary
)
SELECT
    artist,
    song,
    ROUND(avg_popularity, 2) AS avg_popularity,
    song_rank
FROM ranked_songs
WHERE song_rank <= 3
ORDER BY artist, song_rank;