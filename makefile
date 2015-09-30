include avr.rules

test: $(CCODE)
	$(CC) $(FLAGS) $< -o $@

code.hex: $(ALL)
	$(CC) $(FLAGS) $< -o $@

clean: 
	rm -f code.hex test *.o *.d

-include $(DEP)

