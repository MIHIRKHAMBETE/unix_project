README.md: guessinggame.sh
	touch README.md
	echo "Project Title: 'Mihir's Guessing Game Unix Project' " > README.md
	echo "\nDate made:\n" >> README.md
	date >> README.md
	echo "\nLines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
