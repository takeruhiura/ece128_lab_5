# ECE 128 Lab 5 README File


## Project Description
The focus of this lab is to extend upon Lab 3 and allow for further customization of the seven-segment display using cathode and anode outputs. The lab involves sequential logic using a clock cycle, which is required to output more than 1 digit on the display. There is an anode_generator module, which is used to select a specific digit of the display. The purpose of this lab is to learn how clock cycles can be used to serve as an abstraction to represent a 4-digit BCD value on the seven-segment display. A multiseg_driver module is created to achieve the goal of the lab by using the anode generator and the seven segment display decoder module created in Lab 3. 

## How to simulate the program and implement it on the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints file is in the constraints directory, and the testbench file is in the simulation sources directory. Make sure the multiseg_driver.v file is set as top because this is the file that implements all the other modules. Make sure the correct testbench file and constraint file are selected. To run the simulation, go to the navigator on the left side of Vivado and click run simulation, then run behavioral simulation to output the waveforms of the testbench. 

To program the FPGA with the display code, run the implementation, and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. 
