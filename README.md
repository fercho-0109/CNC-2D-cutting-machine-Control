# CNC-2D-cutting-machine-Control

Code developed for "A. Marino, - simulation of a 2D cutting machine in Matlab/Simulink ".  
Master's student "Calabria University".  
For any questions or suggestions write to alexismarino0109@gmail.com

# Sumary.
This repository contains a simulation of a 2D cutting machine, it uses 2 DC motors controlled by a PID control. This project aims to simulate in MATLAB-Simulink the cut of three pieces a triangle, a semicircle, and a circle from a rectangular slab (3m long and 2m high). The size, placement, and orientation of the figures are arbitrary. The rest position of the machine is in the upper right corner of the plate and the reference generator is governed by a "Stateflow". 
# Process  
1.	The machine is considered in position (0,0). Then, the first action is to locate the machine in the rest position (3,2).
2.	To start the cut is necessary to put a variable that identifies when the machine is cutting or only moving.  
3.	The reference generator will send data of position, velocity, and acceleration according to design to cut the figures. 
4.	Finally, the cut machine comes back to the rest position.

# Prerequisites
- The code was created and tested on the Matlab/Simulink 2023a environment

# File description
The repository contains three files
1. **MAIN**: This Matlab file contains the configuration parameters of the program and shows the poles of the plant after control.
2. **CD_MOTORControl2**: This simulink file contains the complete simulation of the CNC machine with its reference generator.
3. **Report**: This contains the explanation of the complete process, the mathematical formulations, and the control configuration.


# Example to run the experiment  
**"CNC cutting machine"**
### Matlab/Simulink simulation 
1. Download the files. 
2. Run the Matlab file "**MAIN**".
3. Open and run the Simulink file "**CD_MOTORControl2**"
4. The XY Graph block should start to show the results  
![image](https://github.com/fercho-0109/CNC-2D-cutting-machine-Control/assets/40362695/fdf0f90a-b552-409e-ade6-690a95bdbeeb)









  


