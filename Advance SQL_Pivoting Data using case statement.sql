#  How to get multiple columns from one column, SQL
# In this question, the goal is to pivot data, transforming rows into columns to improve data readability and analysis.
# Concepts:
# Pivoting: The process of transforming data from a row-based structure to a column-based structure.
# CASE Statement: A statement used to conditionally transform or select data.


SELECT timestamp,
       Max(CASE
             WHEN name = 'sensor01' THEN value
           end) sensor01,
       Max(CASE
             WHEN name = 'sensor02' THEN value
           end) sensor02
FROM   sensor_data
GROUP  BY timestamp
ORDER  BY timestamp; 