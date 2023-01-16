Assumptions
    -the boxes have a capacity --> 10 objects
    -in order to put down an object, the robot has to put down the box
    -
Problem 1 assumtions
* robots need to use a box to move things from 1 place to another
* the robot can contain only one box at a time
* in order to put down an object, the robot has to put down the box
* We assume that the box has unlimited capacity
* we have no constrains on resuing the boxes
* number of boxes are defind in the problem instance and the planner need to find best plan using the available boxes
Problem 1 examples
* two persons different locations with needs of medicine food and tools with 2 box.
* think about it for the next problems maybe.

Problem 2 assumtions
* all the boxes have the same capacity that we will define
* each carrier has its own capacity
* we have a single type of robot but the only difference between the robots is the capcity so you can have robot
with larger capacity than the other.
Problem 2 examples
* we want to tackle that we have different carrrier capacity. 

Problem 3 assumtions
* we cannot use fluents with pandas that there is no capacity for either for capciy or the box
* carrier can contain only 1 box
* the boxxes has unlimited capcity
Problem 3 examples
* two persons different locations with needs of medicine food and tools with 2 box.
* think about it for the next problems maybe.
* show the different ways of defining the goal. 
Problem 4 assumtions
* we do a table of the duration of each action 
* 
Problem 4 examples
* we can to try to see that there are actiosn that can be run in parralal 

Problem 5 assumtions
* the values that we wrote in the code
* there is a node for each action for 2 robots and adding more robots require modificaiton in the cmake file
Problem 5 examples
* we can to try to see that there are actiosn that can be run in parralal 



planutils run lama "domain2.pddl problem2.pddl"
;; planutils run downward "--alias lama-first domain1.pddl problem1.pddl"
;; remove the "" if you donot need it 



PROBLEM 2
https://sites.google.com/view/enhsp/home/how-to-use-it?authuser=0

java -jar enhsp-dist/enhsp.jar -o ../domain2.pddl -f ../problem2.pddl -planner opt-hlm

BEST PLANNER EVER
java -jar enhsp-dist/enhsp.jar -o ../domain2.pddl -f ../problem2.pddl -planner opt-hmax

PROBLEM 3
For pandas command 
java -jar PANDA.jar -parser hddl domain3.hddl problem3.hddl 

## for problem 4 command:
Avoids optimizing initial found solution!
Run weighted A* with W = 1.000, not restarting with goal states
planutils run optic "-N  domain4.pddl problem4.pddl"
****
planutils run optic "-N -W1,1 domain4.pddl problem4.pddl"
Run weighted A* with W = 1.000, not restarting with goal states

****
planutils run optic "-N -E -W1,1 domain4.pddl problem4.pddl"
Run weighted A* with W = 1.000, not restarting with goal states
Skip EHC: go straight to best-first search

****
planutils run tfd domain4.pddl problem4.pddl
No particular flags supported

move_robot 50 seconds
load_box 5 seconds 
unload_box 5 seconds
pickup_item_from_location 3 seconds
put_item_in_box 3 seconds
pick_item_from_box 3 seconds
pickdown_food 3 seconds
pickdown_tool 3 seconds
pickdown_medicine 3 seconds

source 
For ros 
ros2 launch plansys2_problem5 plansys2_problem5_launch.py

ros2 run plansys2_terminal plansys2_terminal