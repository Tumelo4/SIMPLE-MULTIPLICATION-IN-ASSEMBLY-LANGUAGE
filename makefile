mul:
	yasm -f elf64 -g dwarf2 -l mul.lst mul.asm
	ld -o mul mul.o

run:
	./mul

clean:
	rm -f *o *lst mul
