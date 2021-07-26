sub:
	yasm -f elf64 -g dwarf2 -l sub.lst sub.asm
	ld -o sub sub.o

run:
	./sub

clean:
	rm -f *o *lst sub
