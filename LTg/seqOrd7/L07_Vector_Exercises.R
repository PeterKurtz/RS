## =========================================================
#
#    STAT5050: some in class practice with vectors and
#              subsetting
## =========================================================


## 1.) Use : to produce the sequence
#       10  9  8  7  6  5  4  3  2  1
10:1

## 2.) Use 1:10 and order() to produce the sequence
#       10  9  8  7  6  5  4  3  2  1
?order
order(1:10, decreasing = TRUE)

## 3.) Use : and ^ to produce the sequence
#       1   4   9  16  25  36  49  64  81 100
(1:10)^2

## 4.) Use : and ^ to produce the sequence
#       1   4  27 256
(1:4)^(1:4)

## 5.) Use seq() to produce a sequence of 10 items
#       evenly spaced between 0 and 1
seq(0,1,length=10)

## 6.) Use seq to count by 7s up to 100
seq(1,100,by=7)

## 7.) Use only : to construct the sequence (and arithmetic operators)
#       -1  2  5  8 11 14 17 20 23
#      HINT: adding 1 to the above sequence may be
#           informative
(0:8)*3 - 1

## 8.) a.)Run this and explain what %in% does:
#       c(1,5, 9) %in% 2:10
c(1,5,9) %in% 2:10
# If what is in c is in 2:10, the output will be true. If not value will be false.
# b.) Using %in%, seq, and subsetting, write a command to return all common 
#multiples of 4 and 7 below 100
four=seq(0,100,by=4)
seven=seq(0,100,by=7)
multiples = four %in% seven
four[multiples == TRUE]

## 9.) a.) Sort the following sequence
x <- c(3 , 25 , 13 ,9, 33, 4 , 15 , 21)
sort(x)

# b.) Use order() on the sequence in a.) (before sorting)
#      and see if you can explain the output in English
order(x)
#first element is first, second element is 6th, 3rd element is fourth...

# c.) Use the order function combined with subsetting to generate the sorted
# sequence from part a.
x[order(x)]


## 10.) fun with rep()!!
#      a.) use : and rep() to produce the sequence
#        1 1 1 2 2 2 3 3 3
x=c(1,2,3)
rep(x,c(3,3,3))

#      b.) use : and rep() to produce the sequence
#        1 2 3 4 1 2 3 4
rep(1:4,2)

#      c.) use : and rep() to produce the sequence
#         1 1 2 2 2 2 3 3 4 4 4
i=c(1,2,3,4)
y=c(2,4,2,3)
rep(i,y)

## 11.) paste() is a very useful command for combining 
#       two vectors (often one of them a character)
#
#   a.) read ?paste and run a few of the examples 
#        to get a feel for how it works
?paste
#   b.) Use LETTERS to produce the sequence 
#        "A" "B" "C" "D" "E" 
LETTERS[1:5]


#   c.) Use LETTERS and sort() to produce the sequence
#        "E" "D" "C" "B" "A"
#        HINT: read ?sort
sort(LETTERS[1:5], decreasing=TRUE)
#   d.) Use LETTERS and paste() to produce the sequence
#        "A1" "B2" "C3" "D4" "E5"
num=c(1,2,3,4,5)
paste(LETTERS[1:5],num,sep="")
#   e.) Use LETTERS and paste() to produce the sequence
#       "A [:-)] 1" "B [:-)] 2" "C [:-)] 3" "D [:-)] 4" "E [:-)] 5"
#       HINT: ?paste and read about the sep argument
smile=rep(' [:-)] ', 5)
paste(LETTERS[1:5], smile, num,sep="")
#   f.) Use LETTERS and paste() to produce the 
#        SINGLE ELEMENT  "A1B2C3"
#        HINT: both sep and collapse arguments in ?paste
#              may be useful

##########################################
#          Challenge Problems            #
##########################################

## 11.) Use your knowledge of vectors and subsetting to generate the following 
# sequence:
# 1 2 3 4 5 2 3 4 5 3 4 5 4 5 5
#HINT: If you need hlep, look at the answers on slide 9 for a good starting point

## 12.) Use your knowledge of vectors and subsetting to generate the following 
# sequence:
# "a" "b" "c" "d" "b" "c" "d" "e" "c" "d" "e" "f" "d" "e" "f" "g"
#HINT: If you need help, look at the answers on slide 9 of your notes on vectors
#for a good starting point

## 13.) Use your knowledge of vectors and subsetting to generate the following 
# sequence:
# 1 2 3 4 5 3 4 5 6 7 4 5 6 7 8 5 6 7 8 9
#HINT: If you need help, look at the answers on slide 9 of your notes on vectors
#for a good starting point 
