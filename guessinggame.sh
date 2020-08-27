# Guessing Game implementation
# by Mihir Khambete

# count the number of files in the current directory 
# assumes no files contained inside directories contained in the working directory
filecount=$(ls -1 | wc -l)

# function for comparing two integers
function compare {
 if [[ $1 -lt $2 ]]
 then
  echo "Your guess is too low! Try again!"
  return 1 
 elif [[ $1 -gt $2 ]]
 then 
  echo "Your guess is too high! Try again!"
  return 1 
 else
  echo "Correct! You Win!"
  return 0
 fi
}

# prompt user for initial guess

echo "Welcome to the guessing game! How many files are in this directory? Please enter an integer guess"

# repeat until user inputs correct answer
while [[ $filecount -eq $filecount ]]
do
 read response
 compare response filecount
 if [[ $? -eq 0 ]]
 then
  break
 fi
done
