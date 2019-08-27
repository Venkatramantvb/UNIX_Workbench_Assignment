guessinggame: guessinggame.sh
	touch README.md
	echo "Project Name :" > README.md
	echo "------------" >> README.md
	echo "Guessing_Game_Project" >> README.md
	echo " " >> README.md
	echo " " >> README.md
	echo "Make executed time :" >> README.md
	echo "------------------" >> README.md
	date >> README.md
	echo " " >> README.md
	echo " " >> README.md
	echo "Number of lines in guessinggame.sh file :" >> README.md
	echo "---------------------------------------" >> README.md
	wc -l < guessinggame.sh >> README.md
clean:
	rm -rf README.md
