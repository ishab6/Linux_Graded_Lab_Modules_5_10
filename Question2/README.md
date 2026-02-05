# Question 2 – log_analysis.sh

**Purpose:**  
- Analyze log file  
- Count total entries, INFO, WARNING, ERROR messages  
- Display the most recent ERROR  
- Generate a summary report file

**Commands & Observations:**

1. `./log_analysis.sh`  
   - Error: No argument provided

2. `./log_analysis.sh fakefile.txt`  
   - Error: File does not exist or not readable

3. `./log_analysis.sh logsample.txt`  
   - Total entries: 5  
   - INFO: 2, WARNING: 1, ERROR: 2  
   - Most recent ERROR: 2025-01-12 10:17:10 ERROR Network timeout  
   - Report created: logsummary_<date>.txt
