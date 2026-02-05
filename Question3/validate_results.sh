#!/bin/bash
pass_count=0
fail_one_count=0
while IFS=, read -r roll name m1 m2 m3; do
  fail=0
  [ "$m1" -lt 33 ] && fail=$((fail+1))
  [ "$m2" -lt 33 ] && fail=$((fail+1))
  [ "$m3" -lt 33 ] && fail=$((fail+1))
  if [ $fail -eq 0 ]; then
    echo "$name passed in all subjects"
    pass_count=$((pass_count+1))
  elif [ $fail -eq 1 ]; then
    echo "$name failed in exactly one subject"
    fail_one_count=$((fail_one_count+1))
  fi
done < marks.txt
echo "Students passed in all subjects: $pass_count"
echo "Students failed in exactly one subject: $fail_one_count"
