add:
	yasm -f elf64 -g dwarf2 -l add.lst add.asm
	ld -o add add.o

run:
	./add

clean:
	rm -f *o *lst add
