# Question 1 – analyze.sh

**Purpose:**  
- Analyze a file or directory  
- Count lines, words, characters for files  
- Count total files and .txt files for directories  
- Handle invalid arguments gracefully

**Commands & Observations:**

1. `./analyze.sh` → Error: Provide exactly one argument  
2. `./analyze.sh fakefile.txt` → Error: Path does not exist  
3. `./analyze.sh sample.txt` → Lines: 3, Words: 10, Characters: 54  
4. `./analyze.sh testdir` → Total files: 3, .txt files: 2
