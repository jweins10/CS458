include avr.rules

main: $(ALL)
	$(CC) $(FLAGS) $< -o $@

clean: 
	rm -f *.o *.d

-include $(DEP)

