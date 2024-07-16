# For MSYS2
CC=/mingw64/bin/gcc

fb1-3:	fb1-3.l
	flex $<
	# Note, need -L/usr/lib option, otherwise -lfl might not be found
	$(CC) -o $@ lex.yy.c -L/usr/lib -lfl

clean:
	rm -f ./fb1-3.exe ./lex.yy.c
