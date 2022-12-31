Assumptions
    -the boxes have a capacity --> 10 objects
    -in order to put down an object, the robot has to put down the box
    -the robot can contain only one box at a time


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