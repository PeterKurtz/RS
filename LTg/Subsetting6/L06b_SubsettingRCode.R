# L06b: Code Subsetting

# Insert your own working directory here
setwd("C:/Users/alanw/Documents/USU/Teaching/STATS5050/Lecture 6")

load("L05c_family.rda")


# p2

fbmi[10]

fage
fage[-1]
fage[c(-1, -3)]
fage[c(1, 3)]

fageNew <- fage[c(1, 3)]
fageNew


# p3

fheight
fheight["j"]

fgender
foverWt
fgender[foverWt]
# ! means NOT and negates each component of a logical vector
!TRUE
!FALSE
fgender[!foverWt]

fage
foverWt
fage[foverWt]
fage[!foverWt]


# p5-7

# make a copy of fheight so we can restore it later on
saveheight <- fheight

fheight
fheight[2] <- 61        		# By inclusion
fheight

fheight <- saveheight
fheight
fheight[-13] <- 62      	# By exclusion
fheight

fheight <- saveheight
fheight
fheight["e"] <- 67      	# By name
fheight

fheight <- saveheight
fheight
foverWt
fheight[foverWt] <- NA   # By logical
fheight

fheight <- saveheight
fheight
fheight[ ] <- 70         		# No index
fheight

fheight <- saveheight
fheight
fheight <- 70               # Watch out!
fheight

fheight <- saveheight


# p12

4 < 3

"a" == "A"

"A" == "A"

4 != 3


# p13

fweight > 150

fgender != "m"

fbmi

fbmi == 25.16239

# WHY this result?!?

fbmi[1]

print(fbmi[1], 10)


# p14

fgender
fgender == "f"
fweight
fweight[fgender == "f"]


# p17: Try these

# 1
TRUE & TRUE

TRUE & FALSE

FALSE & TRUE

FALSE & FALSE

# 2
TRUE & NA

FALSE & NA

# 3
TRUE | TRUE

TRUE | FALSE

FALSE | TRUE

FALSE | FALSE

# 4
TRUE | NA

FALSE | NA


# p18

fweight
!(fweight > 150)

fweight
fnames
(fweight > 150) & (fnames == "Tom")

fweight
fage
(fweight > 150) | (fage > 65)


# p19

all(fage > 18)

any(fage < 18)

any(fweight < 150)

all(fweight < 150)


# p20

fage < 50

fgender == "f"

!foverWt

(fgender == "m") & (fheight < 70)


# p21

fage[!foverWt]

fgender[fage > 50]

fbmi[fheight == max(fheight)]
