#Sample output#
s = sample(c(1,2,3,4,5,6),600, T)

# Calculate the frequency of each outcome#
fr = table(s)/600
# Calculate the relative frequencies as percentages
pr = fr * 100

# Print the generated random sequence#
print("Generated Random Sequence:")
print(s)

# Print the relative frequencies#

print("Relative Frequencies:")
print(fr,digits=2)

print("Relative Frequencies as Percentages:")
print(paste(round(pr, digits = 2), "%"))
