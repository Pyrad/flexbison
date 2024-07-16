# For MSYS2
CC=/mingw64/bin/gcc

fb1-5:	fb1-5.l fb1-5.y
	bison -d fb1-5.y
	flex fb1-5.l
	# Note, need -L/usr/lib option, otherwise -lfl might not be found
	$(CC) -o $@ fb1-5.tab.c lex.yy.c -L/usr/lib -lfl

clean:
	rm -f ./fb1-5.tab.c ./fb1-5.tab.h ./lex.yy.c ./fb1-5.exe
