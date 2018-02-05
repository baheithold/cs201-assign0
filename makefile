
# SLL object files
sllOBJS0 = sll-0-0.o integer.o sll.o
sllOBJS1 = sll-0-1.o real.o sll.o
sllOBJS2 = sll-0-2.o string.o sll.o
sllOBJS3 = sll-0-3.o integer.o sll.o
sllOBJS4 = sll-0-4.o integer.o sll.o
sllOBJS5 = sll-0-5.o real.o sll.o
sllOBJS6 = sll-0-6.o real.o sll.o
sllOBJS7 = sll-0-7.o integer.o sll.o
sllOBJS8 = sll-0-8.o  sll.o
sllOBJS9 = sll-0-9.o integer.o sll.o
sllOBJS10 = sll-0-10.o integer.o sll.o
sllOBJS11 = sll-0-11.o real.o sll.o
sllOBJS12 = sll-0-12.o real.o sll.o
sllOBJS13 = sll-0-13.o integer.o sll.o
sllOBJS14 = sll-0-14.o integer.o sll.o

# DLL object files
dllOBJS0 = dll-0-0.o integer.o dll.o
dllOBJS1 = dll-0-1.o real.o dll.o
dllOBJS2 = dll-0-2.o string.o dll.o
dllOBJS3 = dll-0-3.o integer.o dll.o
dllOBJS4 = dll-0-4.o integer.o dll.o
dllOBJS5 = dll-0-5.o real.o dll.o
dllOBJS6 = dll-0-6.o real.o dll.o
dllOBJS7 = dll-0-7.o integer.o dll.o
dllOBJS8 = dll-0-8.o dll.o
dllOBJS9 = dll-0-9.o integer.o dll.o
dllOBJS10 = dll-0-10.o integer.o dll.o
dllOBJS11 = dll-0-11.o real.o dll.o
dllOBJS12 = dll-0-12.o real.o dll.o
dllOBJS13 = dll-0-13.o integer.o dll.o
dllOBJS14 = dll-0-14.o integer.o dll.o

# STACK object files
stackOBJS0 = stack-0-0.o integer.o stack.o dll.o
stackOBJS1 = stack-0-1.o real.o stack.o dll.o
stackOBJS2 = stack-0-2.o string.o stack.o dll.o
stackOBJS3 = stack-0-3.o integer.o stack.o dll.o
stackOBJS4 = stack-0-4.o integer.o stack.o dll.o
stackOBJS5 = stack-0-5.o integer.o stack.o dll.o
stackOBJS6 = stack-0-6.o stack.o dll.o
stackOBJS7 = stack-0-7.o integer.o stack.o dll.o
stackOBJS8 = stack-0-8.o integer.o stack.o dll.o
stackOBJS9 = stack-0-9.o integer.o stack.o dll.o

# QUEUE object files
queueOBJS0 = queue-0-0.o integer.o queue.o sll.o
queueOBJS1 = queue-0-1.o real.o queue.o sll.o
queueOBJS2 = queue-0-2.o string.o queue.o sll.o
queueOBJS3 = queue-0-3.o integer.o queue.o sll.o
queueOBJS4 = queue-0-4.o integer.o queue.o sll.o
queueOBJS5 = queue-0-5.o integer.o queue.o sll.o
queueOBJS6 = queue-0-6.o queue.o sll.o
queueOBJS7 = queue-0-7.o integer.o queue.o sll.o
queueOBJS8 = queue-0-8.o integer.o queue.o sll.o
queueOBJS9 = queue-0-9.o integer.o queue.o sll.o


# Test executables for SLL DLL QUEUE and STACK
sllTESTS = 	sll-0-0 sll-0-1 sll-0-2 sll-0-3 sll-0-4 sll-0-5 sll-0-6 \
			sll-0-7 sll-0-8 sll-0-9 sll-0-10 sll-0-11 sll-0-12 sll-0-13 sll-0-14
dllTESTS = 	dll-0-0 dll-0-1 dll-0-2 dll-0-3 dll-0-4 dll-0-5 dll-0-6 \
			dll-0-7 dll-0-8 dll-0-9 dll-0-10 dll-0-11 dll-0-12 dll-0-13 dll-0-14
queueTESTS = queue-0-0 queue-0-1 queue-0-2 queue-0-3 queue-0-4 \
			 queue-0-5 queue-0-6 queue-0-7 queue-0-8 queue-0-9
stackTESTS = stack-0-0 stack-0-1 stack-0-2 stack-0-3 stack-0-4 \
			 stack-0-5 stack-0-6 stack-0-7 stack-0-8 stack-0-9


OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g


# RULES
all: test-sll test-dll test-queue test-stack

debug:	$(sllTESTS) $(dllTESTS) $(queueTESTS) $(stackTESTS)

test-sll:	test-sll.o integer.o sll.o
		gcc $(LOPTS) test-sll.o integer.o sll.o -o test-sll

test-dll:	test-dll.o integer.o dll.o
		gcc $(LOPTS) test-dll.o integer.o dll.o -o test-dll

test-stack:	test-stack.o integer.o dll.o stack.o
		gcc $(LOPTS) test-stack.o integer.o dll.o stack.o -o test-stack

test-queue:	test-queue.o integer.o sll.o queue.o
		gcc $(LOPTS) test-queue.o integer.o sll.o queue.o -o test-queue

sll-0-0:	$(sllOBJS0)
	gcc $(LOPTS) $(sllOBJS0) -o sll-0-0

sll-0-1:	$(sllOBJS1)
	gcc $(LOPTS) $(sllOBJS1) -o sll-0-1

sll-0-2:	$(sllOBJS2)
	gcc $(LOPTS) $(sllOBJS2) -o sll-0-2

sll-0-3:	$(sllOBJS3)
	gcc $(LOPTS) $(sllOBJS3) -o sll-0-3

sll-0-4:	$(sllOBJS4)
	gcc $(LOPTS) $(sllOBJS4) -o sll-0-4

sll-0-5:	$(sllOBJS5)
	gcc $(LOPTS) $(sllOBJS5) -o sll-0-5

sll-0-6:	$(sllOBJS6)
	gcc $(LOPTS) $(sllOBJS6) -o sll-0-6

sll-0-7:	$(sllOBJS7)
	gcc $(LOPTS) $(sllOBJS7) -o sll-0-7

sll-0-8:	$(sllOBJS8)
	gcc $(LOPTS) $(sllOBJS8) -o sll-0-8

sll-0-9:	$(sllOBJS9)
	gcc $(LOPTS) $(sllOBJS9) -o sll-0-9

sll-0-10:	$(sllOBJS10)
	gcc $(LOPTS) $(sllOBJS10) -o sll-0-10

sll-0-11:	$(sllOBJS11)
	gcc $(LOPTS) $(sllOBJS11) -o sll-0-11

sll-0-12:	$(sllOBJS12)
	gcc $(LOPTS) $(sllOBJS12) -o sll-0-12

sll-0-13:	$(sllOBJS13)
	gcc $(LOPTS) $(sllOBJS13) -o sll-0-13

sll-0-14:	$(sllOBJS14)
	gcc $(LOPTS) $(sllOBJS14) -o sll-0-14

dll-0-0:	$(dllOBJS0)
	gcc $(LOPTS) $(dllOBJS0) -o dll-0-0

dll-0-1:	$(dllOBJS1)
	gcc $(LOPTS) $(dllOBJS1) -o dll-0-1

dll-0-2:	$(dllOBJS2)
	gcc $(LOPTS) $(dllOBJS2) -o dll-0-2

dll-0-3:	$(dllOBJS3)
	gcc $(LOPTS) $(dllOBJS3) -o dll-0-3

dll-0-4:	$(dllOBJS4)
	gcc $(LOPTS) $(dllOBJS4) -o dll-0-4

dll-0-5:	$(dllOBJS5)
	gcc $(LOPTS) $(dllOBJS5) -o dll-0-5

dll-0-6:	$(dllOBJS6)
	gcc $(LOPTS) $(dllOBJS6) -o dll-0-6

dll-0-7:	$(dllOBJS7)
	gcc $(LOPTS) $(dllOBJS7) -o dll-0-7

dll-0-8:	$(dllOBJS8)
	gcc $(LOPTS) $(dllOBJS8) -o dll-0-8

dll-0-9:	$(dllOBJS9)
	gcc $(LOPTS) $(dllOBJS9) -o dll-0-9

dll-0-10:	$(dllOBJS10)
	gcc $(LOPTS) $(dllOBJS10) -o dll-0-10

dll-0-11:	$(dllOBJS11)
	gcc $(LOPTS) $(dllOBJS11) -o dll-0-11

dll-0-12:	$(dllOBJS12)
	gcc $(LOPTS) $(dllOBJS12) -o dll-0-12

dll-0-13:	$(dllOBJS13)
	gcc $(LOPTS) $(dllOBJS13) -o dll-0-13

dll-0-14:	$(dllOBJS14)
	gcc $(LOPTS) $(dllOBJS14) -o dll-0-14

queue-0-0:	$(queueOBJS0)
	gcc $(LOPTS) $(queueOBJS0) -o queue-0-0

queue-0-1:	$(queueOBJS1)
	gcc $(LOPTS) $(queueOBJS1) -o queue-0-1

queue-0-2:	$(queueOBJS2)
	gcc $(LOPTS) $(queueOBJS2) -o queue-0-2

queue-0-3:	$(queueOBJS3)
	gcc $(LOPTS) $(queueOBJS3) -o queue-0-3

queue-0-4:	$(queueOBJS4)
	gcc $(LOPTS) $(queueOBJS4) -o queue-0-4

queue-0-5:	$(queueOBJS5)
	gcc $(LOPTS) $(queueOBJS5) -o queue-0-5

queue-0-6:	$(queueOBJS6)
	gcc $(LOPTS) $(queueOBJS6) -o queue-0-6

queue-0-7:	$(queueOBJS7)
	gcc $(LOPTS) $(queueOBJS7) -o queue-0-7

queue-0-8:	$(queueOBJS8)
	gcc $(LOPTS) $(queueOBJS8) -o queue-0-8

queue-0-9:	$(queueOBJS9)
	gcc $(LOPTS) $(queueOBJS9) -o queue-0-9

stack-0-0:	$(stackOBJS0)
	gcc $(LOPTS) $(stackOBJS0) -o stack-0-0

stack-0-1:	$(stackOBJS1)
	gcc $(LOPTS) $(stackOBJS1) -o stack-0-1

stack-0-2:	$(stackOBJS2)
	gcc $(LOPTS) $(stackOBJS2) -o stack-0-2

stack-0-3:	$(stackOBJS3)
	gcc $(LOPTS) $(stackOBJS3) -o stack-0-3

stack-0-4:	$(stackOBJS4)
	gcc $(LOPTS) $(stackOBJS4) -o stack-0-4

stack-0-5:	$(stackOBJS5)
	gcc $(LOPTS) $(stackOBJS5) -o stack-0-5

stack-0-6:	$(stackOBJS6)
	gcc $(LOPTS) $(stackOBJS6) -o stack-0-6

stack-0-7:	$(stackOBJS7)
	gcc $(LOPTS) $(stackOBJS7) -o stack-0-7

stack-0-8:	$(stackOBJS8)
	gcc $(LOPTS) $(stackOBJS8) -o stack-0-8

stack-0-9:	$(stackOBJS9)
	gcc $(LOPTS) $(stackOBJS9) -o stack-0-9

test-sll.o:	testing/sll/test-sll.c sll.h integer.h
		gcc $(OOPTS) ./testing/sll/test-sll.c

test-dll.o:	testing/dll/test-dll.c dll.h integer.h
		gcc $(OOPTS) ./testing/dll/test-dll.c

test-stack.o:	testing/stack/test-stack.c stack.h integer.h dll.h
		gcc $(OOPTS) ./testing/stack/test-stack.c

test-queue.o:	testing/queue/test-queue.c queue.h integer.h sll.h
		gcc $(OOPTS) ./testing/queue/test-queue.c

sll-0-0.o:	./testing/sll/sll-0-0.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-0.c

sll-0-1.o:	./testing/sll/sll-0-1.c real.h
	gcc $(OOPTS) ./testing/sll/sll-0-1.c

sll-0-2.o:	./testing/sll/sll-0-2.c string.h
	gcc $(OOPTS) ./testing/sll/sll-0-2.c

sll-0-3.o:	./testing/sll/sll-0-3.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-3.c

sll-0-4.o:	./testing/sll/sll-0-4.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-4.c

sll-0-5.o:	./testing/sll/sll-0-5.c real.h
	gcc $(OOPTS) ./testing/sll/sll-0-5.c

sll-0-6.o:	./testing/sll/sll-0-6.c real.h
	gcc $(OOPTS) ./testing/sll/sll-0-6.c

sll-0-7.o:	./testing/sll/sll-0-7.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-7.c

sll-0-8.o:	./testing/sll/sll-0-8.c
	gcc $(OOPTS) ./testing/sll/sll-0-8.c

sll-0-9.o:	./testing/sll/sll-0-9.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-9.c

sll-0-10.o:	./testing/sll/sll-0-10.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-10.c

sll-0-11.o:	./testing/sll/sll-0-11.c real.h
	gcc $(OOPTS) ./testing/sll/sll-0-11.c

sll-0-12.o:	./testing/sll/sll-0-12.c real.h
	gcc $(OOPTS) ./testing/sll/sll-0-12.c

sll-0-13.o:	./testing/sll/sll-0-13.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-13.c

sll-0-14.o:	./testing/sll/sll-0-14.c integer.h
	gcc $(OOPTS) ./testing/sll/sll-0-14.c

dll-0-0.o:	./testing/dll/dll-0-0.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-0.c

dll-0-1.o:	./testing/dll/dll-0-1.c real.h
	gcc $(OOPTS) ./testing/dll/dll-0-1.c

dll-0-2.o:	./testing/dll/dll-0-2.c string.h
	gcc $(OOPTS) ./testing/dll/dll-0-2.c

dll-0-3.o:	./testing/dll/dll-0-3.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-3.c

dll-0-4.o:	./testing/dll/dll-0-4.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-4.c

dll-0-5.o:	./testing/dll/dll-0-5.c real.h
	gcc $(OOPTS) ./testing/dll/dll-0-5.c

dll-0-6.o:	./testing/dll/dll-0-6.c real.h
	gcc $(OOPTS) ./testing/dll/dll-0-6.c

dll-0-7.o:	./testing/dll/dll-0-7.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-7.c

dll-0-8.o:	./testing/dll/dll-0-8.c
	gcc $(OOPTS) ./testing/dll/dll-0-8.c

dll-0-9.o:	./testing/dll/dll-0-9.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-9.c

dll-0-10.o:	./testing/dll/dll-0-10.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-10.c

dll-0-11.o:	./testing/dll/dll-0-11.c real.h
	gcc $(OOPTS) ./testing/dll/dll-0-11.c

dll-0-12.o:	./testing/dll/dll-0-12.c real.h
	gcc $(OOPTS) ./testing/dll/dll-0-12.c

dll-0-13.o:	./testing/dll/dll-0-13.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-13.c

dll-0-14.o:	./testing/dll/dll-0-14.c integer.h
	gcc $(OOPTS) ./testing/dll/dll-0-14.c

queue-0-0.o:	./testing/queue/queue-0-0.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue/queue-0-0.c

queue-0-1.o:	./testing/queue/queue-0-1.c queue.h sll.h real.h
	gcc $(OOPTS) ./testing/queue/queue-0-1.c

queue-0-2.o:	./testing/queue/queue-0-2.c queue.h sll.h string.h
	gcc $(OOPTS) ./testing/queue/queue-0-2.c

queue-0-3.o:	./testing/queue/queue-0-3.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue/queue-0-3.c

queue-0-4.o:	./testing/queue/queue-0-4.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue/queue-0-4.c

queue-0-5.o:	./testing/queue/queue-0-5.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue/queue-0-5.c

queue-0-6.o:	./testing/queue/queue-0-6.c queue.h sll.h
	gcc $(OOPTS) ./testing/queue/queue-0-6.c

queue-0-7.o:	./testing/queue/queue-0-7.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue/queue-0-7.c

queue-0-8.o:	./testing/queue/queue-0-8.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue/queue-0-8.c

queue-0-9.o:	./testing/queue/queue-0-9.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue/queue-0-9.c

stack-0-0.o:	./testing/stack/stack-0-0.c stack.h sll.h integer.h
	gcc $(OOPTS) ./testing/stack/stack-0-0.c

stack-0-1.o:	./testing/stack/stack-0-1.c stack.h sll.h real.h
	gcc $(OOPTS) ./testing/stack/stack-0-1.c

stack-0-2.o:	./testing/stack/stack-0-2.c stack.h sll.h string.h
	gcc $(OOPTS) ./testing/stack/stack-0-2.c

stack-0-3.o:	./testing/stack/stack-0-3.c stack.h sll.h integer.h
	gcc $(OOPTS) ./testing/stack/stack-0-3.c

stack-0-4.o:	./testing/stack/stack-0-4.c stack.h sll.h integer.h
	gcc $(OOPTS) ./testing/stack/stack-0-4.c

stack-0-5.o:	./testing/stack/stack-0-5.c stack.h sll.h integer.h
	gcc $(OOPTS) ./testing/stack/stack-0-5.c

stack-0-6.o:	./testing/stack/stack-0-6.c stack.h sll.h
	gcc $(OOPTS) ./testing/stack/stack-0-6.c

stack-0-7.o:	./testing/stack/stack-0-7.c stack.h sll.h integer.h
	gcc $(OOPTS) ./testing/stack/stack-0-7.c

stack-0-8.o:	./testing/stack/stack-0-8.c stack.h sll.h integer.h
	gcc $(OOPTS) ./testing/stack/stack-0-8.c

stack-0-9.o:	./testing/stack/stack-0-9.c stack.h sll.h integer.h
	gcc $(OOPTS) ./testing/stack/stack-0-9.c

sll.o:	sll.c sll.h
		gcc $(OOPTS) sll.c

dll.o:	dll.c dll.h
		gcc $(OOPTS) dll.c

stack.o:	stack.c stack.h
		gcc $(OOPTS) stack.c

queue.o:	queue.c queue.h dll.h
		gcc $(OOPTS) queue.c

integer.o:	integer.c integer.h
		gcc $(OOPTS) integer.c

real.o:	real.c real.h
		gcc $(OOPTS) real.c

string.o:	string.c string.h
		gcc $(OOPTS) string.c

test:	all
		@echo Testing
		@echo Running test-sll...
		@./test-sll
		@echo Running test-dll...
		@./test-dll
		@echo Running test-queue...
		@./test-queue
		@echo Running test-stack...
		@./test-stack
		@echo Finished Testing!

debug:	$(sllTESTS) $(dllTESTS) $(queueTESTS) $(stackTESTS)
		@echo Debugging \(NO diff output if OK\)
		@echo
		@echo Debugging singly-linked list
		@echo Running sll-0-0 tester...
		@./sll-0-0 > ./testing/sll/myResults/results-0-0
		@diff ./testing/sll/expectedResults/results-0-0 \
		./testing/sll/myResults/results-0-0
		@echo Running sll-0-1 tester...
		@./sll-0-1 > ./testing/sll/myResults/results-0-1
		@diff ./testing/sll/expectedResults/results-0-1 \
		./testing/sll/myResults/results-0-1
		@echo Running sll-0-2 tester...
		@./sll-0-2 > ./testing/sll/myResults/results-0-2
		@diff ./testing/sll/expectedResults/results-0-2 \
		./testing/sll/myResults/results-0-2
		@echo Running sll-0-3 tester...
		@./sll-0-3 > ./testing/sll/myResults/results-0-3
		@diff ./testing/sll/expectedResults/results-0-3 \
		./testing/sll/myResults/results-0-3
		@echo Running sll-0-4 tester...
		@./sll-0-4 > ./testing/sll/myResults/results-0-4
		@diff ./testing/sll/expectedResults/results-0-4 \
		./testing/sll/myResults/results-0-4
		@echo Running sll-0-5 tester...
		@./sll-0-5 > ./testing/sll/myResults/results-0-5
		@diff ./testing/sll/expectedResults/results-0-5 \
		./testing/sll/myResults/results-0-5
		@echo Running sll-0-6 tester...
		@./sll-0-6 > ./testing/sll/myResults/results-0-6
		@diff ./testing/sll/expectedResults/results-0-6 \
		./testing/sll/myResults/results-0-6
		@echo Running sll-0-7 tester...
		@./sll-0-7 > ./testing/sll/myResults/results-0-7
		@diff ./testing/sll/expectedResults/results-0-7 \
		./testing/sll/myResults/results-0-7
		@echo Running sll-0-8 tester...
		@./sll-0-8 > ./testing/sll/myResults/results-0-8
		@diff ./testing/sll/expectedResults/results-0-8 \
		./testing/sll/myResults/results-0-8
		@echo Running sll-0-9 tester...
		@./sll-0-9 > ./testing/sll/myResults/results-0-9
		@diff ./testing/sll/expectedResults/results-0-9 \
		./testing/sll/myResults/results-0-9
		@echo Running sll-0-10 tester...
		@./sll-0-10 > ./testing/sll/myResults/results-0-10
		@diff ./testing/sll/expectedResults/results-0-10 \
		./testing/sll/myResults/results-0-10
		@echo Running sll-0-11 tester...
		@./sll-0-11 > ./testing/sll/myResults/results-0-11
		@diff ./testing/sll/expectedResults/results-0-11 \
		./testing/sll/myResults/results-0-11
		@echo Running sll-0-12 tester...
		@./sll-0-12 > ./testing/sll/myResults/results-0-12
		@diff ./testing/sll/expectedResults/results-0-12 \
		./testing/sll/myResults/results-0-12
		@echo Running sll-0-13 tester...
		@./sll-0-13 > ./testing/sll/myResults/results-0-13
		@diff ./testing/sll/expectedResults/results-0-13 \
		./testing/sll/myResults/results-0-13
		@echo Running sll-0-14 tester...
		@./sll-0-14 > ./testing/sll/myResults/results-0-14
		@diff ./testing/sll/expectedResults/results-0-14 \
		./testing/sll/myResults/results-0-14
		@echo
		@echo Debugging doubly-linked list
		@echo Running dll-0-0 tester...
		@./dll-0-0 > ./testing/dll/myResults/results-0-0
		@diff ./testing/dll/expectedResults/results-0-0 \
		./testing/dll/myResults/results-0-0
		@echo Running dll-0-1 tester...
		@./dll-0-1 > ./testing/dll/myResults/results-0-1
		@diff ./testing/dll/expectedResults/results-0-1 \
		./testing/dll/myResults/results-0-1
		@echo Running dll-0-2 tester...
		@./dll-0-2 > ./testing/dll/myResults/results-0-2
		@diff ./testing/dll/expectedResults/results-0-2 \
		./testing/dll/myResults/results-0-2
		@echo Running dll-0-3 tester...
		@./dll-0-3 > ./testing/dll/myResults/results-0-3
		@diff ./testing/dll/expectedResults/results-0-3 \
		./testing/dll/myResults/results-0-3
		@echo Running dll-0-4 tester...
		@./dll-0-4 > ./testing/dll/myResults/results-0-4
		@diff ./testing/dll/expectedResults/results-0-4 \
		./testing/dll/myResults/results-0-4
		@echo Running dll-0-5 tester...
		@./dll-0-5 > ./testing/dll/myResults/results-0-5
		@diff ./testing/dll/expectedResults/results-0-5 \
		./testing/dll/myResults/results-0-5
		@echo Running dll-0-6 tester...
		@./dll-0-6 > ./testing/dll/myResults/results-0-6
		@diff ./testing/dll/expectedResults/results-0-6 \
		./testing/dll/myResults/results-0-6
		@echo Running dll-0-7 tester...
		@./dll-0-7 > ./testing/dll/myResults/results-0-7
		@diff ./testing/dll/expectedResults/results-0-7 \
		./testing/dll/myResults/results-0-7
		@echo Running dll-0-8 tester...
		@./dll-0-8 > ./testing/dll/myResults/results-0-8
		@diff ./testing/dll/expectedResults/results-0-8 \
		./testing/dll/myResults/results-0-8
		@echo Running dll-0-9 tester...
		@./dll-0-9 > ./testing/dll/myResults/results-0-9
		@diff ./testing/dll/expectedResults/results-0-9 \
		./testing/dll/myResults/results-0-9
		@echo Running dll-0-10 tester...
		@./dll-0-10 > ./testing/dll/myResults/results-0-10
		@diff ./testing/dll/expectedResults/results-0-10 \
		./testing/dll/myResults/results-0-10
		@echo Running dll-0-11 tester...
		@./dll-0-11 > ./testing/dll/myResults/results-0-11
		@diff ./testing/dll/expectedResults/results-0-11 \
		./testing/dll/myResults/results-0-11
		@echo Running dll-0-12 tester...
		@./dll-0-12 > ./testing/dll/myResults/results-0-12
		@diff ./testing/dll/expectedResults/results-0-12 \
		./testing/dll/myResults/results-0-12
		@echo Running dll-0-13 tester...
		@./dll-0-13 > ./testing/dll/myResults/results-0-13
		@diff ./testing/dll/expectedResults/results-0-13 \
		./testing/dll/myResults/results-0-13
		@echo Running dll-0-14 tester...
		@./dll-0-14 > ./testing/dll/myResults/results-0-14
		@diff ./testing/dll/expectedResults/results-0-14 \
		./testing/dll/myResults/results-0-14
		@echo
		@echo Debugging Stack
		@echo Running stack-0-0 tester...
		@./stack-0-0 > ./testing/stack/myResults/results-0-0
		@diff ./testing/stack/expectedResults/results-0-0 \
		./testing/stack/myResults/results-0-0
		@echo Running stack-0-1 tester...
		@./stack-0-1 > ./testing/stack/myResults/results-0-1
		@diff ./testing/stack/expectedResults/results-0-1 \
		./testing/stack/myResults/results-0-1
		@echo Running stack-0-2 tester...
		@./stack-0-2 > ./testing/stack/myResults/results-0-2
		@diff ./testing/stack/expectedResults/results-0-2 \
		./testing/stack/myResults/results-0-2
		@echo Running stack-0-3 tester...
		@./stack-0-3 > ./testing/stack/myResults/results-0-3
		@diff ./testing/stack/expectedResults/results-0-3 \
		./testing/stack/myResults/results-0-3
		@echo Running stack-0-4 tester...
		@./stack-0-4 > ./testing/stack/myResults/results-0-4
		@diff ./testing/stack/expectedResults/results-0-4 \
		./testing/stack/myResults/results-0-4
		@echo Running stack-0-5 tester...
		@./stack-0-5 > ./testing/stack/myResults/results-0-5
		@diff ./testing/stack/expectedResults/results-0-5 \
		./testing/stack/myResults/results-0-5
		@echo Running stack-0-6 tester...
		@./stack-0-6 > ./testing/stack/myResults/results-0-6
		@diff ./testing/stack/expectedResults/results-0-6 \
		./testing/stack/myResults/results-0-6
		@echo Running stack-0-7 tester...
		@./stack-0-7 > ./testing/stack/myResults/results-0-7
		@diff ./testing/stack/expectedResults/results-0-7 \
		./testing/stack/myResults/results-0-7
		@echo Running stack-0-8 tester...
		@./stack-0-8 > ./testing/stack/myResults/results-0-8
		@diff ./testing/stack/expectedResults/results-0-8 \
		./testing/stack/myResults/results-0-8
		@echo Running stack-0-9 tester...
		@./stack-0-9 > ./testing/stack/myResults/results-0-9
		@diff ./testing/stack/expectedResults/results-0-9 \
		./testing/stack/myResults/results-0-9
		@echo
		@echo Debugging Queue
		@echo Running queue-0-0 tester...
		@./queue-0-0 > ./testing/queue/myResults/results-0-0
		@diff ./testing/queue/expectedResults/results-0-0 \
		./testing/queue/myResults/results-0-0
		@echo Running queue-0-1 tester...
		@./queue-0-1 > ./testing/queue/myResults/results-0-1
		@diff ./testing/queue/expectedResults/results-0-1 \
		./testing/queue/myResults/results-0-1
		@echo Running queue-0-2 tester...
		@./queue-0-2 > ./testing/queue/myResults/results-0-2
		@diff ./testing/queue/expectedResults/results-0-2 \
		./testing/queue/myResults/results-0-2
		@echo Running queue-0-3 tester...
		@./queue-0-3 > ./testing/queue/myResults/results-0-3
		@diff ./testing/queue/expectedResults/results-0-3 \
		./testing/queue/myResults/results-0-3
		@echo Running queue-0-4 tester...
		@./queue-0-4 > ./testing/queue/myResults/results-0-4
		@diff ./testing/queue/expectedResults/results-0-4 \
		./testing/queue/myResults/results-0-4
		@echo Running queue-0-5 tester...
		@./queue-0-5 > ./testing/queue/myResults/results-0-5
		@diff ./testing/queue/expectedResults/results-0-5 \
		./testing/queue/myResults/results-0-5
		@echo Running queue-0-6 tester...
		@./queue-0-6 > ./testing/queue/myResults/results-0-6
		@diff ./testing/queue/expectedResults/results-0-6 \
		./testing/queue/myResults/results-0-6
		@echo Running queue-0-7 tester...
		@./queue-0-7 > ./testing/queue/myResults/results-0-7
		@diff ./testing/queue/expectedResults/results-0-7 \
		./testing/queue/myResults/results-0-7
		@echo Running queue-0-8 tester...
		@./queue-0-8 > ./testing/queue/myResults/results-0-8
		@diff ./testing/queue/expectedResults/results-0-8 \
		./testing/queue/myResults/results-0-8
		@echo Running queue-0-9 tester...
		@./queue-0-9 > ./testing/queue/myResults/results-0-9
		@diff ./testing/queue/expectedResults/results-0-9 \
		./testing/queue/myResults/results-0-9
		@echo Finished Debugging!

valgrind:	all
		valgrind ./test-sll
		valgrind ./test-dll
		valgrind ./test-stack
		valgrind ./test-queue

clean:
		rm -f $(sllTESTS) $(dllTESTS) $(queueTESTS) $(stackTESTS) \
		test-sll test-dll test-queue test-stack *.o vgcore.*
