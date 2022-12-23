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