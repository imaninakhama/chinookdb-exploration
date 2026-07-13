Turns a long list of rows into a summary report
*by sum*
total of a numeric column

*count*
how many items are in this pile

*avg*
whats the average 

*min/max*
where is the biggest/smallest value in the value

NB:The Golden Rule 
If you put a column in SELECT without wrapping it in COUNT/SUM/etc, you MUST also put it in GROUP BY.
Why? The computer needs to know which pile to put it in


