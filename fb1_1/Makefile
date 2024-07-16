# For MSYS2
CC=/mingw64/bin/gcc

fb1-1:	fb1-1.l
	flex $<
	# Note, need -L/usr/lib option, otherwise -lfl might not be found
	$(CC) -o $@ lex.yy.c -L/usr/lib -lfl

clean:
	rm -f ./lex.yy.c ./fb1-1.exe
