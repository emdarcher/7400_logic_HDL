

TARGET = ic_7474
TB = ic_7474_tb.v

test:
	iverilog -o $(TARGET).vvp $(TARGET).v $(TB)
	vvp $(TARGET).vvp

sim:
	gtkwave $(TARGET).vcd


