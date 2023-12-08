gcc -c -Ofast -march=native run.c 
csc -o run-user run.o run-user.scm
./run-user