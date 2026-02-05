#!/bin/bash

# Convert input to lowercase and split into words
words=$(tr 'A-Z' 'a-z' < input.txt | tr -s ' ' '\n')

# Words with only vowels
echo "$words" | grep -E '^[aeiou]+$' > vowels.txt

# Words with only consonants
echo "$words" | grep -E '^[^aeiou]+$' > consonants.txt

# Words with both vowels and consonants, starting with a consonant
echo "$words" | grep -E '^[^aeiou][a-z]*[aeiou][a-z]*$' > mixed.txt

echo "Pattern classification completed."
