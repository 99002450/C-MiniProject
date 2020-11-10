test.out: test.cpp Item.cpp ItemList.cpp 
	g++ $^ -o $@ -lgtest -lgtest_main -lpthread
itemtest.out: itemtest.cpp Item.cpp ItemList.cpp
	g++ $^ -o $@ -lgtest -lgtest_main -lpthread
	./itemtest.out
build:|
	g++ main.cpp Item.cpp ItemList.cpp -o bin.out
	./bin.out
run:|
	./bin.out
clean: |
	rm *.out