GAME=$(HOME)/var/game/game

game:
	(cd $(HOME)/var/game && \
		make -j8 2>&1)

clean:
	(cd $(HOME)/var && \
		rm -rf game && \
		mkdir -p game && \
		cd game && \
		cmake $(HOME)/src/game)

clean-game: clean
	make game

test: clean-game
	$(GAME) test
	./expect-tests.sh $(HOME)/var/game
