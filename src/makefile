# Compiler
CC = gcc-9

# Compiler flags
CFLAGS = -Wall -Wextra -Werror

# List of source files
SRCS = cd.c fg.c input.c main.c pinfo.c redirection.c background.c chaining.c \
       foreground.c jobs.c basic.c echo.c bg.c execute_inst.c history.c ls.c \
       kjob.c nightwatch.c pwd.c signal_handlers.c overkill.c quit.c piping.c

# Object files
OBJS = $(SRCS:.c=.o)

# Executable name
EXEC = shell

# Default target to build the executable
all: $(EXEC)

# Rule to build the executable
$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJS)

# Rule to build object files
%.o: %.c header.h
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJS) $(EXEC)

# Rule to rebuild the project
rebuild: clean all

.PHONY: all clean rebuild
