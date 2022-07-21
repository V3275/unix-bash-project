all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench Final Project" > README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\nThe number of lines of code contained in **guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
