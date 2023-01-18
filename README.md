# Automated_Planning_project
This repository is a student project developed by Edoardo Barbara and Mostafa Haggag for the "Automated Planning: Theory and Practical" course of the Master in Artificial Intelligent Systems at the University of Trento, a.y. 2022-2023.
## Format
This remo contains the following file:

## Problem 1 Commands
### planer 1

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
planutils run optic "-N  domain4.pddl example_1.pddl"
planutils run optic "-N  domain4.pddl example_2.pddl"

```

### planer 2
```bash
planutils run optic "-N -W1,1 domain4.pddl example_1.pddl" 
planutils run optic "-N -W1,1 domain4.pddl example_2.pddl" 

```
### planer 3
```bash
planutils run optic "-N -E -W1,1 domain4.pddl example_1.pddl"
planutils run optic "-N -E -W1,1 domain4.pddl example_2.pddl"

```
## Problem 5 Commands
