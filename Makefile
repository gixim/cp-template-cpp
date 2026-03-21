CC = g++
CFLAGS = -Wall -Wextra
INCDIR =

TARGET = a.out
SRC = main.cc
TEMPLATE = ./tmp/template.cc
BACKUP = ./tmp/main.cc.bak

$(TARGET): $(SRC)
	@clang-format -i $(SRC)
	@$(CC) $(CFLAGS) $(INCDIR) $(SRC) -o $(TARGET)

all: clean $(OBJS) $(TARGET)

clean:
	@-rm -f $(TARGET)

run:
	@pwsh.exe -c 'Get-Clipboard' | ./$(TARGET)

co:
	@cat $(SRC) | clip.exe

new:
	@cp $(SRC) $(BACKUP)
	@cp $(TEMPLATE) $(SRC)
