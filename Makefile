OBJ = main.o HSDArc.o

FEHTextReader: $(OBJ)
	g++ -o FEHTextReader $(OBJ) -static

-include dependencies

.PHONY: depend
depend:
	g++ -MM *.cpp > dependencies

