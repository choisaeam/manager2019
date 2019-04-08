CC = gcc
TARGET = manager
CFlags = -W -Wall
OBJECTS = user.o menu.o main.o
D_OBJECTS = main_d.o menu_d.o user_d.o

all : $(TARGET)

manager_debug : $(D_OBJECTS)
	$(CC) $(CFlags) -o $@ $^

$(TARGET) : $(OBJECTS)
	$(CC) $(CFlags) -o $@ $^

main_d.o : main.c
	$(CC) -DDEBUG_MODE $(CFlags) -c -o $@ $^

menu_d.o : menu.c
	$(CC) -DDEBUG_MODE $(CFlags) -c -o $@ $^

user_d.o : user.c
	$(CC) -DDEBUG_MODE $(CFlags) -c -o $@ $^

clean : 
	rm *.o $(TARGET) manager_debug
