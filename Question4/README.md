# Question 4 – emailcleaner.sh

This script processes email addresses from emails.txt and separates them into valid and invalid lists.

A regular expression is used with grep to identify valid email formats. Valid emails are sorted and duplicate entries are removed using sort and uniq. Invalid emails are extracted using inverse matching.
