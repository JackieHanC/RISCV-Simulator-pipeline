main: read_elf.o sim.o
	g++  read_elf.o sim.o -o main 
sim.o: Simulation.cpp 
	g++ -c Simulation.cpp   -o sim.o 2> log
read_elf.o: Read_Elf.cpp 
	g++ -c Read_Elf.cpp  -o read_elf.o   2> log
clean:
	rm *.o
