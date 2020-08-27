README.md: guessinggame.sh
	touch README.md
	echo "Project Title: 'Peer-graded Assignment: Bash, Make, Git, and GitHub' " > README.md
	date >> README.md
	echo "Lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
