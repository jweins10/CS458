include avr.rules

debug.code: $(CCODE)
	$(CC) $(FLAGS) $< -o $@

main: $(ALL)
	$(CC) $(FLAGS) -o $@ -g $<

program.hex: main
	avr-strip main 
	avr-objcopy -R .eeprom -O ihex main program.hex

program: program.hex
	avrdude -p m328p -c avrisp2 -P /dev/ttyACM0 -U flash:w:program.hex


clean: 
	rm -f program program.hex main *.o *.d

-include $(DEP)

