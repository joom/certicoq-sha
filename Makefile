default: coq c run

.PHONY: default clean coq c

clean:
	rm -f ./*.*.c
	rm -f ./*.*.h
	rm -f ./*.*.o
	rm -f ./glue.*.*.c
	rm -f ./glue.*.*.h
	rm -f ./glue.c
	rm -f ./glue.h
	rm -f ./*.vo
	rm -f ./*.vok
	rm -f ./*.vos
	rm -f ./*.glob

coq:
	coqc prog.v

c:
	gcc -I ../VeriFFI/certicoq/plugin/runtime -w -g -o prog main.c prog.c
	gcc -I ../VeriFFI/certicoq/plugin/runtime -w -g -O1 -o prog_o1 main.c prog.c
	gcc -I ../VeriFFI/certicoq/plugin/runtime -w -g -O2 -o prog_o2 main.c prog.c
	gcc -I ../VeriFFI/certicoq/plugin/runtime -w -g -O3 -o prog_o3 main.c prog.c

run:
	./prog
	./prog_o1
	./prog_o2
	./prog_o3
