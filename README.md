# Automated_Planning_project
This repository is a student project developed by Edoardo Barbara and Mostafa Haggag for the "Automated Planning: Theory and Practical" course of the Master in Artificial Intelligent Systems at the University of Trento, a.y. 2022-2023.
## Format
This repo contains the following file:
We should run the tree command on the github to see everything. PLEASE REMEBER

## Problem 1 Commands
### planer 1
We used planutils and downward. 

planutils run ff domain1.pddl problem1_instance2.pddl 
planutils run lama domain1.pddl problem1_instance2.pddl 
planutils run lama-first domain1.pddl problem1_instance2.pddl 

./fast-downward.py ../domain1.pddl ../problem1_instance2.pddl --search "astar(goalcount)"

### planer 2

## Problem 2 Commands


## Problem 3 Commands
* Put the planner PANADAS in the directory of problem 3. 
* Run these commands.

```bash
java -jar PANDA.jar -parser hddl domain3.hddl example_1.hddl 
java -jar PANDA.jar -parser hddl domain3.hddl example_1_unor.hddl
java -jar PANDA.jar -parser hddl domain3.hddl example_2.hddl 
java -jar PANDA.jar -parser hddl domain3.hddl example_2_unor.hddl 

```

## Problem 4 Commands
### planer 1
```bash
planutils run optic "-N  domain4.pddl example_1.pddl" >> example_1_p1.txt
planutils run optic "-N  domain4.pddl example_2.pddl" >> example_2_p1.txt

```

### planer 2
```bash
planutils run optic "-N -W1,1 domain4.pddl example_1.pddl" >> example_1_p2.txt
planutils run optic "-N -W1,1 domain4.pddl example_2.pddl" >> example_2_p2.txt

```
### planer 3
```bash
planutils run optic "-N -E -W1,1 domain4.pddl example_1.pddl" >> example_1_p3.txt
planutils run optic "-N -E -W1,1 domain4.pddl example_2.pddl" >> example_2_p3.txt

```
## Problem 5 Commands
* Open 2 terminals
* Change the directory ``/Automated_Planning_project/plansys2_problem5`` in both of them.
* Run the following commands to source plansys2 and ros2 and build the problem 5 package:

```bash
source /opt/ros/humble/setup.bash
source plansys2_ws/install/setup.bash
colcon build --packages-select plansys2_problem5
```
* Run in the first terminal this command to run the Python node:
```bash
ros2 launch plansys2_problem5 plansys2_problem5_launch.py
```
* Run in the second terminal this command to run Plansys2 terminal
```bash
ros2 run plansys2_terminal plansys2_terminal
```
* In plansys2 terminal, run the following commands to run example 1:
```bash
source launch/example_1
get plan
run
```
* In plansys2 terminal, run the following commands to run example 2:
```bash
source launch/example_2
get plan
run
```