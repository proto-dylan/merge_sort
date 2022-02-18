#merge_sort

This project was a challenge to grok recurrsion.  Though I walked through the Merge Sort CS50 video
(https://www.youtube.com/watch?v=Ns7tGNbtvV4), I was able to get the method working correctly.

The basic psuedocode is: 
   sort left half of given array,

   sort right half,

   merge.

This is accomplished by recurrsion, calling the same #merge_sort method on each side all the way down
until each "side" is a single element or an empty array. Then the "sides" are merged as the recurrsion
is happening, so the resulting array is correctly sorted.