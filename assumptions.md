Assumptions
    -the boxes have a capacity --> 10 objects
    -in order to put down an object, the robot has to put down the box
    -the robot can contain only one box at a time


planutils run lama "domain2.pddl problem2.pddl"
;; planutils run downward "--alias lama-first domain1.pddl problem1.pddl"
;; remove the "" if you donot need it 




https://sites.google.com/view/enhsp/home/how-to-use-it?authuser=0

java -jar enhsp-dist/enhsp.jar -o ../domain2.pddl -f ../problem2.pddl -planner opt-hlm

BEST PLANNER EVER
java -jar enhsp-dist/enhsp.jar -o ../domain2.pddl -f ../problem2.pddl -planner opt-hmax

For pandas command 
java -jar PANDA.jar -parser hddl domain3.hddl problem3.hddl 

for problem 4 command 
planutils run optic "-N  domain4.pddl problem4.pddl"

move_robot 15 seconds
load_box 5 seconds 
unload_box 5 seconds
pickup_item_from_location 3 seconds
put_item_in_box 3 seconds
pick_item_from_box 3 seconds
pickdown_food 3 seconds
pickdown_tool 3 seconds
pickdown_medicine 3 seconds