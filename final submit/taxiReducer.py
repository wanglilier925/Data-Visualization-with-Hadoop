#! /usr/bin/env python

import sys

last_key = None
count = 0
sum = 1
max_value=0
min_value=0


# keys come grouped together
# so we need to keep track of state a little bit
# thus when the key changes , we need to reset
# our counter, and write out the count we've accumulated

for line in sys.stdin:
   line = line.strip()
   key, value1, value2 = line.split("\t")

   # we have to be able to deal with missing values
   if value1 =="NA" or value2 =="NA":
       continue

   value = int(value1)+int(value2)
       

   # if this is the first iteration
   if not last_key:
       last_key = key
       count = 1
       sum = value
       max_value=value
       min_value=value
   
    # if they're the same, log it
   elif key == last_key:
        count = count + 1
        sum = sum + value
        if(max_value < value):
          max_value=value  
        else: 
          max_value=max_value
        if(min_value > value):
            min_value=value  
        else: 
            min_value=min_value

   else: 
        
        result = [last_key, min_value, max_value, sum/count]
        print("\t".join(str(v) for v in result))
        last_key = key
        count = 1
        sum = value
        max_value=value

# this is to catch the final value that we output
print("\t".join(str(v) for v in [last_key, min_value, max_value, sum/count]))

