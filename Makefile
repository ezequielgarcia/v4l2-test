OBJS := vidcat

all : $(OBJS)

$(OBJS): $(OBJS:%=%.c)
	$(CC) -o $@ $(@:%=%.c) -Wall

clean:
	rm -f $(OBJS) *.s a.out
