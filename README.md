# Anticipating Utah Jazz Players' Performance 
## Project Objective
I am solving the problem of predicting player perfomance. Using many data sources. I will solve this problem by analyzing insights based on trends from players' performances throughout the 2023-24 season.
## Job Description
The title of this job is Basketball Data Scientist for the Utah Jazz, one of 30 teams in the NBA. This job focuses on using various techniques in order to enhance basketball operation outcomes. Technical requirements for this job include Python or R, SQL, as well as data visualization and data engineering. This project is related to the job posting because the job requires implementing efficient techniques for data sources all the way to data analytics. This project will require me to become a data engineer, and manage my data from initial scrapings all the way to the final visualizations and presentation
## Data
Rapid API: Used various endpoints in order to get around 1000 records of player performance by each game of the 2023-24 season <br>
CBS Sports: Scraped CBS Sports in order to get the outcomes (W or L) for each game played by the Utah Jazz in the 2023-24 season <br>
NBA: Scraped NBA website in order to get more details about the outcomes of each game, including opponent, record at the time, and team stats accumulated for each game <br>
## Notebooks
[API_ETL.ipynb](https://colab.research.google.com/drive/1vS2MCTRW_9ms364sa7XNVQXdfjCJ8ckv?usp=sharing): The purpose of this notebook is to perform a get request with an API endpoint in order to filter the request text as necessary and create a dataframe. <br>
[Web_Scrape_ETL](https://colab.research.google.com/drive/1eBbjUfVWMs6Ds8VpZF6acxXmh8MwzqcR?usp=sharing): The purpose of this notebook is to webscrape various websites, parse the response, and create a new dictionary in order to eventually create a dataframe.<br>
[SQL_Analysis](https://colab.research.google.com/drive/1-GRyFre25CJQu9ZEuQfQFt9_n4h3SjQP?usp=sharing): In this notebook, I used sqlalchemy in order to run SQL querys connected by an engine to my AWS. The analysis consists of four queries (2 descriptive, 1 diagnostic, and 1 predictive) <br>
## Future Improvements
If I had more time, I would have liked to implement data from other seasons besides the most previous season. Given the short timing in this project, I chose to analyze data from one season in order to perform my analytics.
