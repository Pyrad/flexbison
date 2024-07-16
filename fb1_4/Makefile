# For MSYS2
CC=/mingw64/bin/gcc

fb1-4:	fb1-4.l
	flex $<
	# Note, need -L/usr/lib option, otherwise -lfl might not be found
	$(CC) -o $@ lex.yy.c -L/usr/lib -lfl

clean:
	rm -f ./fb1-4.exe ./lex.yy.c
