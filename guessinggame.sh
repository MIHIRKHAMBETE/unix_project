# Guessing Game implementation
# by Mihir Khambete

# count the number of files in the current directory

filecount=$(ls -1 | wc -l)
echo "filecount is $filecount"

# function for comparing two integers
function compare {
 if [[ $1 -lt $2 ]]
 then
  echo "Your guess is too low!"
  return 1 
 elif [[ $1 -gt $2 ]]
 then 
  echo "Your guess is too high!"
  return 1 
 else
  echo "Correct!"
  return 1
 fi
}

# prompt user for initial guess

echo "Welcome to the guessing game! How many files are in this directory? Please enter a guess"

read response

echo "You entered: $response"
