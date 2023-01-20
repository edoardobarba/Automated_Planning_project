#Results problem 1 instance 1
commands given from problem1 folder
It is required the installation of fast downward and planutils planners 


#A*(goalcount)


./DOWNWARD/fast-downward.py /domain1.pddl /problem1_instance1.pddl --search "astar(goalcount)"


INFO     planner time limit: None
INFO     planner memory limit: None

INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /home/edo/Documents/GitHub/Automated_Planning_project/problem1/DOWNWARD/builds/release/bin/translate/translate.py ../domain1.pddl ../problem1_instance1.pddl --sas-file output.sas
Parsing...
Parsing: [0.000s CPU, 0.002s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.000s wall-clock]
Normalizing Datalog program...
Trivial rules: Converted to facts.
Normalizing Datalog program: [0.000s CPU, 0.005s wall-clock]
Preparing model... [0.000s CPU, 0.001s wall-clock]
Generated 82 rules.
Computing model... [0.010s CPU, 0.002s wall-clock]
83 relevant atoms
110 auxiliary atoms
193 final queue length
222 total queue pushes
Completing instantiation... [0.000s CPU, 0.001s wall-clock]
Instantiating: [0.010s CPU, 0.011s wall-clock]
Computing fact groups...
Finding invariants...
26 initial candidates
Finding invariants: [0.000s CPU, 0.006s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.000s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
3 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.000s CPU, 0.007s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Translator axioms removed by simplifying: 0
Computing negative axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.000s wall-clock]
Translating task: [0.010s CPU, 0.003s wall-clock]
3 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
2 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.001s wall-clock]
Reordering and filtering variables...
9 of 9 variables necessary.
4 of 6 mutex groups necessary.
26 of 26 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.001s wall-clock]
Translator variables: 9
Translator derived variables: 0
Translator facts: 25
Translator goal facts: 3
Translator mutex groups: 4
Translator total mutex groups size: 12
Translator operators: 26
Translator axioms: 0
Translator task size: 201
Translator peak memory: 40936 KB
Writing output... [0.000s CPU, 0.001s wall-clock]
Done! [0.020s CPU, 0.026s wall-clock]
translate exit code: 0

INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /home/edo/Documents/GitHub/Automated_Planning_project/problem1/DOWNWARD/builds/release/bin/downward --search 'astar(goalcount)' --internal-plan-file sas_plan < output.sas
[t=0.000302873s, 9884 KB] reading input...
[t=0.00129097s, 9884 KB] done reading input!
[t=0.0065588s, 10140 KB] Initializing goal count heuristic...
[t=0.00700791s, 10140 KB] Building successor generator...done!
[t=0.00767716s, 10140 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00783964s, 10140 KB] time for successor generation creation: 0.00017528s
[t=0.00797876s, 10140 KB] Variables: 9
[t=0.0081134s, 10140 KB] FactPairs: 25
[t=0.00824275s, 10140 KB] Bytes per state: 4
[t=0.00877246s, 10140 KB] Conducting best first search with reopening closed nodes, (real) bound = 2147483647
[t=0.00913037s, 10140 KB] New best heuristic value for goalcount: 3
[t=0.00926771s, 10140 KB] g=0, 1 evaluated, 0 expanded
[t=0.00944973s, 10140 KB] f = 3, 1 evaluated, 0 expanded
[t=0.00962745s, 10140 KB] Initial heuristic value for goalcount: 3
[t=0.00978071s, 10140 KB] pruning method: none
[t=0.0100466s, 10140 KB] f = 4, 6 evaluated, 1 expanded
[t=0.0102857s, 10140 KB] f = 5, 10 evaluated, 6 expanded
[t=0.0105594s, 10140 KB] f = 6, 23 evaluated, 10 expanded
[t=0.0108219s, 10140 KB] f = 7, 30 evaluated, 23 expanded
[t=0.0111323s, 10140 KB] f = 8, 45 evaluated, 30 expanded
[t=0.0114114s, 10140 KB] f = 9, 55 evaluated, 45 expanded
[t=0.0115871s, 10140 KB] New best heuristic value for goalcount: 2
[t=0.0117385s, 10140 KB] g=7, 56 evaluated, 46 expanded
[t=0.0121493s, 10140 KB] f = 10, 75 evaluated, 58 expanded
[t=0.0126554s, 10140 KB] f = 11, 94 evaluated, 75 expanded
[t=0.0131852s, 10140 KB] f = 12, 125 evaluated, 100 expanded
[t=0.0134644s, 10140 KB] New best heuristic value for goalcount: 1
[t=0.0136095s, 10140 KB] g=11, 135 evaluated, 104 expanded
[t=0.0140104s, 10140 KB] f = 13, 159 evaluated, 128 expanded
[t=0.0143405s, 10140 KB] f = 14, 186 evaluated, 162 expanded
[t=0.0147307s, 10140 KB] f = 15, 216 evaluated, 189 expanded
[t=0.0148896s, 10140 KB] New best heuristic value for goalcount: 0
[t=0.0149725s, 10140 KB] g=15, 223 evaluated, 193 expanded
[t=0.0150339s, 10140 KB] Solution found!
[t=0.0150901s, 10140 KB] Actual search time: 0.00521444s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b1 l1 c1 r1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b1 l1 c1 r1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i1 b1 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pick_item_from_box i2 b1 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
[t=0.0151494s, 10140 KB] Plan length: 15 step(s).
[t=0.0151494s, 10140 KB] Plan cost: 15
[t=0.0151494s, 10140 KB] Expanded 194 state(s).
[t=0.0151494s, 10140 KB] Reopened 0 state(s).
[t=0.0151494s, 10140 KB] Evaluated 223 state(s).
[t=0.0151494s, 10140 KB] Evaluations: 223
[t=0.0151494s, 10140 KB] Generated 379 state(s).
[t=0.0151494s, 10140 KB] Dead ends: 0 state(s).
[t=0.0151494s, 10140 KB] Expanded until last jump: 189 state(s).
[t=0.0151494s, 10140 KB] Reopened until last jump: 0 state(s).
[t=0.0151494s, 10140 KB] Evaluated until last jump: 216 state(s).
[t=0.0151494s, 10140 KB] Generated until last jump: 368 state(s).
[t=0.0151494s, 10140 KB] Number of registered states: 223
[t=0.0151494s, 10140 KB] Int hash set load factor: 223/256 = 0.871094
[t=0.0151494s, 10140 KB] Int hash set resizes: 8
[t=0.0151494s, 10140 KB] Search time: 0.00638334s
[t=0.0151494s, 10140 KB] Total time: 0.0151494s
Solution found.
Peak memory: 10140 KB
Remove intermediate file output.sas
search exit code: 0

INFO     Planner time: 0.40s


#FF

planutils run ff domain1.pddl problem1_instance1.pddl 



ff: parsing domain file
domain 'DOMAIN1' defined
 ... done.
ff: parsing problem file
problem 'PROBLEM_EXAMPLE1' defined
 ... done.



Cueing down from goal distance:    7 into depth [1][2][3][4][5][6][7]

Enforced Hill-climbing failed !
switching to Best-first Search now.

advancing to distance :    7
                           6
                           5
                           4
                           3
                           2
                           1
                           0

ff: found legal plan as follows

step    0: PICKUP_ITEM_FROM_LOCATION I3 L1 C1 R1
        1: PUT_ITEM_IN_BOX I3 B1 L1 C1 R1
        2: PICKUP_ITEM_FROM_LOCATION I2 L1 C1 R1
        3: PUT_ITEM_IN_BOX I2 B1 L1 C1 R1
        4: PICKUP_ITEM_FROM_LOCATION I1 L1 C1 R1
        5: PUT_ITEM_IN_BOX I1 B1 L1 C1 R1
        6: PICKUP_BOX B1 R1 C1 L1
        7: MOVE_ROBOT_WITH_BOX R1 L1 L2 C1 B1
        8: PICKDOWN_BOX B1 R1 C1 L2
        9: PICK_ITEM_FROM_BOX I3 B1 L2 C1 R1
       10: PICKDOWN_TOOL I3 L2 C1 R1 P1
       11: PICK_ITEM_FROM_BOX I2 B1 L2 C1 R1
       12: PICKDOWN_MEDICINE I2 L2 C1 R1 P1
       13: PICK_ITEM_FROM_BOX I1 B1 L2 C1 R1
       14: PICKDOWN_FOOD I1 L2 C1 R1 P1
     

time spent:    0.00 seconds instantiating 33 easy, 0 hard action templates
               0.00 seconds reachability analysis, yielding 26 facts and 30 actions
               0.00 seconds creating final representation with 23 relevant facts
               0.00 seconds building connectivity graph
               0.00 seconds searching, evaluating 87 states, to a max depth of 7
               0.00 seconds total time


#Lama-First
planutils run lama-first domain1.pddl problem1_instance1.pddl 
INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /workspace/downward/builds/release/bin/translate/translate.py domain1.pddl problem1_instance1.pddl --sas-file output.sas
Parsing...
Parsing: [0.010s CPU, 0.002s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.000s wall-clock]
Normalizing Datalog program...
Trivial rules: Converted to facts.
Normalizing Datalog program: [0.000s CPU, 0.004s wall-clock]
Preparing model... [0.000s CPU, 0.002s wall-clock]
Generated 82 rules.
Computing model... [0.000s CPU, 0.002s wall-clock]
83 relevant atoms
110 auxiliary atoms
193 final queue length
222 total queue pushes
Completing instantiation... [0.000s CPU, 0.001s wall-clock]
Instantiating: [0.010s CPU, 0.010s wall-clock]
Computing fact groups...
Finding invariants...
26 initial candidates
Finding invariants: [0.000s CPU, 0.007s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.000s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
3 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.000s CPU, 0.008s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Translator axioms removed by simplifying: 0
Computing negative axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.000s wall-clock]
Translating task: [0.010s CPU, 0.001s wall-clock]
3 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
2 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.001s wall-clock]
Reordering and filtering variables...
9 of 9 variables necessary.
4 of 6 mutex groups necessary.
26 of 26 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.000s wall-clock]
Translator variables: 9
Translator derived variables: 0
Translator facts: 25
Translator goal facts: 3
Translator mutex groups: 4
Translator total mutex groups size: 12
Translator operators: 26
Translator axioms: 0
Translator task size: 201
Translator peak memory: 39436 KB
Writing output... [0.000s CPU, 0.002s wall-clock]
Done! [0.030s CPU, 0.025s wall-clock]
translate exit code: 0

INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /workspace/downward/builds/release/bin/downward --evaluator 'hlm=lmcount(lm_factory=lm_rhw(reasonable_orders=true),transform=adapt_costs(one),pref=false)' --evaluator 'hff=ff(transform=adapt_costs(one))' --search 'lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,reopen_closed=false)' --internal-plan-file sas_plan < output.sas
[t=0.00111728s, 33964 KB] reading input...
[t=0.00258465s, 33964 KB] done reading input!
[t=0.00388503s, 34220 KB] Initializing landmarks count heuristic...
[t=0.00394799s, 34220 KB] Initializing Exploration...
[t=0.00402044s, 34220 KB] Generating landmarks using the RPG/SAS+ approach
approx. reasonable orders
[t=0.00421307s, 34220 KB] approx. obedient reasonable orders
[t=0.00428275s, 34220 KB] Removed 0 reasonable or obedient reasonable orders
[t=0.00442996s, 34220 KB] Landmarks generation time: 0.000530026s
[t=0.00447538s, 34220 KB] Discovered 15 landmarks, of which 0 are disjunctive and 0 are conjunctive.
[t=0.00451364s, 34220 KB] 19 edges
[t=0.00461597s, 34220 KB] Simplifying 48 unary operators... done! [48 unary operators]
[t=0.00471283s, 34220 KB] time to simplify: 0.000136036s
[t=0.00476494s, 34220 KB] Initializing additive heuristic...
[t=0.00480341s, 34220 KB] Initializing FF heuristic...
[t=0.00493075s, 34220 KB] Building successor generator...done!
[t=0.00506366s, 34220 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00510639s, 34220 KB] time for successor generation creation: 3.0112e-05s
[t=0.005149s, 34220 KB] Variables: 9
[t=0.00518573s, 34220 KB] FactPairs: 25
[t=0.00522138s, 34220 KB] Bytes per state: 4
[t=0.00537091s, 34220 KB] Conducting lazy best first search, (real) bound = 2147483647
[t=0.00543683s, 34220 KB] 8 initial landmarks, 3 goal landmarks
[t=0.00552236s, 34220 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 7
[t=0.00556606s, 34220 KB] New best heuristic value for ff(transform = adapt_costs(one)): 7
[t=0.00560596s, 34220 KB] g=0, 1 evaluated, 0 expanded
[t=0.00565556s, 34220 KB] Initial heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 7
[t=0.00569417s, 34220 KB] Initial heuristic value for ff(transform = adapt_costs(one)): 7
[t=0.0060099s, 34220 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 6
[t=0.0060504s, 34220 KB] g=5, 25 evaluated, 24 expanded
[t=0.00626112s, 34220 KB] New best heuristic value for ff(transform = adapt_costs(one)): 6
[t=0.00630053s, 34220 KB] g=6, 43 evaluated, 39 expanded
[t=0.00635165s, 34220 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 5
[t=0.00639409s, 34220 KB] New best heuristic value for ff(transform = adapt_costs(one)): 5
[t=0.00643523s, 34220 KB] g=7, 44 evaluated, 40 expanded
[t=0.00673688s, 34220 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 4
[t=0.00679272s, 34220 KB] g=13, 77 evaluated, 61 expanded
[t=0.0071646s, 34220 KB] New best heuristic value for ff(transform = adapt_costs(one)): 4
[t=0.00721601s, 34220 KB] g=16, 114 evaluated, 98 expanded
[t=0.0072682s, 34220 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 3
[t=0.00731265s, 34220 KB] New best heuristic value for ff(transform = adapt_costs(one)): 3
[t=0.00735093s, 34220 KB] g=17, 115 evaluated, 99 expanded
[t=0.0074612s, 34220 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 2
[t=0.00750087s, 34220 KB] g=21, 123 evaluated, 105 expanded
[t=0.00761574s, 34220 KB] New best heuristic value for ff(transform = adapt_costs(one)): 2
[t=0.00765585s, 34220 KB] g=25, 129 evaluated, 111 expanded
[t=0.00770621s, 34220 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 1
[t=0.00774743s, 34220 KB] New best heuristic value for ff(transform = adapt_costs(one)): 1
[t=0.00778457s, 34220 KB] g=26, 130 evaluated, 112 expanded
[t=0.00783908s, 34220 KB] Solution found!
[t=0.00788647s, 34220 KB] Actual search time: 0.00242785s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i1 b1 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i2 b1 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
[t=0.00793326s, 34220 KB] Plan length: 27 step(s).
[t=0.00793326s, 34220 KB] Plan cost: 27
[t=0.00793326s, 34220 KB] Expanded 113 state(s).
[t=0.00793326s, 34220 KB] Reopened 0 state(s).
[t=0.00793326s, 34220 KB] Evaluated 131 state(s).
[t=0.00793326s, 34220 KB] Evaluations: 245
[t=0.00793326s, 34220 KB] Generated 242 state(s).
[t=0.00793326s, 34220 KB] Dead ends: 17 state(s).
[t=0.00793326s, 34220 KB] Number of registered states: 131
[t=0.00793326s, 34220 KB] Int hash set load factor: 131/256 = 0.511719
[t=0.00793326s, 34220 KB] Int hash set resizes: 8
[t=0.00793326s, 34220 KB] Search time: 0.00256341s
[t=0.00793326s, 34220 KB] Total time: 0.00793326s
Solution found.
Peak memory: 34220 KB
Remove intermediate file output.sas
search exit code: 0


#Lama

planutils run lama domain1.pddl problem1_instance1.pddl 

INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /workspace/downward/builds/release/bin/translate/translate.py domain1.pddl problem1_instance1.pddl --sas-file output.sas
Parsing...
Parsing: [0.000s CPU, 0.002s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.000s wall-clock]
Normalizing Datalog program...
Trivial rules: Converted to facts.
Normalizing Datalog program: [0.010s CPU, 0.006s wall-clock]
Preparing model... [0.000s CPU, 0.002s wall-clock]
Generated 82 rules.
Computing model... [0.000s CPU, 0.002s wall-clock]
83 relevant atoms
110 auxiliary atoms
193 final queue length
222 total queue pushes
Completing instantiation... [0.000s CPU, 0.001s wall-clock]
Instantiating: [0.010s CPU, 0.012s wall-clock]
Computing fact groups...
Finding invariants...
26 initial candidates
Finding invariants: [0.010s CPU, 0.007s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.000s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
3 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.010s CPU, 0.008s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Translator axioms removed by simplifying: 0
Computing negative axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.000s wall-clock]
Translating task: [0.000s CPU, 0.002s wall-clock]
3 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
2 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.001s wall-clock]
Reordering and filtering variables...
9 of 9 variables necessary.
4 of 6 mutex groups necessary.
26 of 26 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.001s wall-clock]
Translator variables: 9
Translator derived variables: 0
Translator facts: 25
Translator goal facts: 3
Translator mutex groups: 4
Translator total mutex groups size: 12
Translator operators: 26
Translator axioms: 0
Translator task size: 201
Translator peak memory: 39436 KB
Writing output... [0.000s CPU, 0.001s wall-clock]
Done! [0.020s CPU, 0.027s wall-clock]
translate exit code: 0

INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /workspace/downward/builds/release/bin/downward --if-unit-cost --evaluator 'hlm=lmcount(lm_rhw(reasonable_orders=true),pref=false)' --evaluator 'hff=ff()' --search 'iterated([lazy_greedy([hff,hlm],preferred=[hff,hlm]),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=5),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=3),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=2),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=1)],repeat_last=true,continue_on_fail=true)' --if-non-unit-cost --evaluator 'hlm1=lmcount(lm_rhw(reasonable_orders=true),transform=adapt_costs(one),pref=false)' --evaluator 'hff1=ff(transform=adapt_costs(one))' --evaluator 'hlm2=lmcount(lm_rhw(reasonable_orders=true),transform=adapt_costs(plusone),pref=false)' --evaluator 'hff2=ff(transform=adapt_costs(plusone))' --search 'iterated([lazy_greedy([hff1,hlm1],preferred=[hff1,hlm1],cost_type=one,reopen_closed=false),lazy_greedy([hff2,hlm2],preferred=[hff2,hlm2],reopen_closed=false),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=5),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=3),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=2),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=1)],repeat_last=true,continue_on_fail=true)' --always --internal-plan-file sas_plan < output.sas
[t=0.00108427s, 33964 KB] reading input...
[t=0.00200877s, 33964 KB] done reading input!
[t=0.0033844s, 34220 KB] Initializing landmarks count heuristic...
[t=0.00343572s, 34220 KB] Initializing Exploration...
[t=0.00350157s, 34220 KB] Generating landmarks using the RPG/SAS+ approach
approx. reasonable orders
[t=0.00366347s, 34220 KB] approx. obedient reasonable orders
[t=0.00371493s, 34220 KB] Removed 0 reasonable or obedient reasonable orders
[t=0.00378629s, 34220 KB] Landmarks generation time: 0.000380346s
[t=0.00381379s, 34220 KB] Discovered 15 landmarks, of which 0 are disjunctive and 0 are conjunctive.
[t=0.00383454s, 34220 KB] 19 edges
[t=0.00388614s, 34220 KB] Simplifying 48 unary operators... done! [48 unary operators]
[t=0.00395326s, 34220 KB] time to simplify: 8.8882e-05s
[t=0.00398335s, 34220 KB] Initializing additive heuristic...
[t=0.00400361s, 34220 KB] Initializing FF heuristic...
[t=0.00412525s, 34220 KB] Building successor generator...done!
[t=0.00421272s, 34220 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00423253s, 34220 KB] time for successor generation creation: 1.9835e-05s
[t=0.00425475s, 34220 KB] Variables: 9
[t=0.00427472s, 34220 KB] FactPairs: 25
[t=0.00429378s, 34220 KB] Bytes per state: 4
[t=0.00462303s, 34484 KB] Building successor generator...done!
[t=0.00471305s, 34484 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00473296s, 34484 KB] time for successor generation creation: 1.03e-06s
[t=0.00475464s, 34484 KB] Variables: 9
[t=0.00477439s, 34484 KB] FactPairs: 25
[t=0.00479383s, 34484 KB] Bytes per state: 4
[t=0.00482572s, 34484 KB] Starting search: lazy_greedy(list(hff, hlm), preferred = list(hff, hlm))
[t=0.00485211s, 34484 KB] Conducting lazy best first search, (real) bound = 2147483647
[t=0.00487778s, 34484 KB] 8 initial landmarks, 3 goal landmarks
[t=0.00492008s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.0049472s, 34484 KB] New best heuristic value for ff: 7
[t=0.00496833s, 34484 KB] g=0, 1 evaluated, 0 expanded
[t=0.00499522s, 34484 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.00501606s, 34484 KB] Initial heuristic value for ff: 7
[t=0.0051741s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.005198s, 34484 KB] g=5, 25 evaluated, 24 expanded
[t=0.00534141s, 34484 KB] New best heuristic value for ff: 6
[t=0.00537149s, 34484 KB] g=6, 43 evaluated, 39 expanded
[t=0.00540102s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=0.00542373s, 34484 KB] New best heuristic value for ff: 5
[t=0.00544369s, 34484 KB] g=7, 44 evaluated, 40 expanded
[t=0.00559526s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=0.00562023s, 34484 KB] g=13, 77 evaluated, 61 expanded
[t=0.00581364s, 34484 KB] New best heuristic value for ff: 4
[t=0.00584373s, 34484 KB] g=16, 114 evaluated, 98 expanded
[t=0.00588128s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=0.00590634s, 34484 KB] New best heuristic value for ff: 3
[t=0.00593236s, 34484 KB] g=17, 115 evaluated, 99 expanded
[t=0.00601433s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=0.0060482s, 34484 KB] g=21, 123 evaluated, 105 expanded
[t=0.00615207s, 34484 KB] New best heuristic value for ff: 2
[t=0.00618355s, 34484 KB] g=25, 129 evaluated, 111 expanded
[t=0.00622671s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=0.0062594s, 34484 KB] New best heuristic value for ff: 1
[t=0.00628992s, 34484 KB] g=26, 130 evaluated, 112 expanded
[t=0.00633045s, 34484 KB] Solution found!
[t=0.00635965s, 34484 KB] Actual search time: 0.00148369s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i1 b1 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i2 b1 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
[t=0.00669863s, 34484 KB] Plan length: 27 step(s).
[t=0.00673784s, 34484 KB] Plan cost: 27
[t=0.00676757s, 34484 KB] Expanded 113 state(s).
[t=0.00679414s, 34484 KB] Reopened 0 state(s).
[t=0.00682041s, 34484 KB] Evaluated 131 state(s).
[t=0.00684581s, 34484 KB] Evaluations: 245
[t=0.00687792s, 34484 KB] Generated 242 state(s).
[t=0.00690938s, 34484 KB] Dead ends: 17 state(s).
[t=0.00694221s, 34484 KB] Number of registered states: 131
[t=0.00697983s, 34484 KB] Int hash set load factor: 131/256 = 0.511719
[t=0.00701011s, 34484 KB] Int hash set resizes: 8
[t=0.00704432s, 34484 KB] Best solution cost so far: 27
[t=0.00707582s, 34484 KB] Solution found - keep searching
[t=0.00720421s, 34484 KB] Building successor generator...done!
[t=0.00730578s, 34484 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00733811s, 34484 KB] time for successor generation creation: 1.748e-06s
[t=0.00737214s, 34484 KB] Variables: 9
[t=0.00740273s, 34484 KB] FactPairs: 25
[t=0.007443s, 34484 KB] Bytes per state: 4
[t=0.00749428s, 34484 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 5)
[t=0.00754874s, 34484 KB] Conducting lazy best first search, (real) bound = 27
[t=0.00758443s, 34484 KB] 8 initial landmarks, 3 goal landmarks
[t=0.0076347s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.00766638s, 34484 KB] New best heuristic value for ff: 7
[t=0.00769676s, 34484 KB] g=0, 1 evaluated, 0 expanded
[t=0.00773758s, 34484 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.00776562s, 34484 KB] Initial heuristic value for ff: 7
[t=0.00804502s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.00809536s, 34484 KB] g=5, 25 evaluated, 24 expanded
[t=0.00827392s, 34484 KB] New best heuristic value for ff: 6
[t=0.00833317s, 34484 KB] g=6, 43 evaluated, 39 expanded
[t=0.00838872s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=0.00842622s, 34484 KB] New best heuristic value for ff: 5
[t=0.0084614s, 34484 KB] g=7, 44 evaluated, 40 expanded
[t=0.00878978s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=0.00884497s, 34484 KB] g=13, 77 evaluated, 61 expanded
[t=0.00934816s, 34484 KB] New best heuristic value for ff: 4
[t=0.00940158s, 34484 KB] g=16, 114 evaluated, 98 expanded
[t=0.00944612s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=0.00949093s, 34484 KB] New best heuristic value for ff: 3
[t=0.00951965s, 34484 KB] g=17, 115 evaluated, 99 expanded
[t=0.00964723s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=0.00967677s, 34484 KB] g=21, 123 evaluated, 105 expanded
[t=0.0103663s, 34484 KB] New best heuristic value for ff: 2
[t=0.0104241s, 34484 KB] g=25, 179 evaluated, 154 expanded
[t=0.0105068s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=0.0105587s, 34484 KB] New best heuristic value for ff: 1
[t=0.0105996s, 34484 KB] g=26, 180 evaluated, 155 expanded
[t=0.0109874s, 34484 KB] Solution found!
[t=0.0110416s, 34484 KB] Actual search time: 0.00346103s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b1 l1 c1 r1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i1 b1 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pick_item_from_box i2 b1 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
[t=0.0113958s, 34484 KB] Plan length: 21 step(s).
[t=0.0114368s, 34484 KB] Plan cost: 21
[t=0.0114656s, 34484 KB] Expanded 190 state(s).
[t=0.0114916s, 34484 KB] Reopened 17 state(s).
[t=0.0115295s, 34484 KB] Evaluated 216 state(s).
[t=0.0115663s, 34484 KB] Evaluations: 390
[t=0.0115954s, 34484 KB] Generated 402 state(s).
[t=0.0116225s, 34484 KB] Dead ends: 25 state(s).
[t=0.011649s, 34484 KB] Number of registered states: 199
[t=0.0116748s, 34484 KB] Int hash set load factor: 199/256 = 0.777344
[t=0.0117022s, 34484 KB] Int hash set resizes: 8
[t=0.0117275s, 34484 KB] Best solution cost so far: 21
[t=0.0117533s, 34484 KB] Solution found - keep searching
[t=0.0118856s, 34484 KB] Building successor generator...done!
[t=0.0119703s, 34484 KB] peak memory difference for successor generator creation: 0 KB
[t=0.0119971s, 34484 KB] time for successor generation creation: 1.33e-06s
[t=0.0120273s, 34484 KB] Variables: 9
[t=0.0120531s, 34484 KB] FactPairs: 25
[t=0.0120786s, 34484 KB] Bytes per state: 4
[t=0.0121186s, 34484 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 3)
[t=0.0121579s, 34484 KB] Conducting lazy best first search, (real) bound = 21
[t=0.0121921s, 34484 KB] 8 initial landmarks, 3 goal landmarks
[t=0.0122347s, 34484 KB] New best heuristic value for ff: 7
[t=0.012264s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.0122903s, 34484 KB] g=0, 1 evaluated, 0 expanded
[t=0.0123305s, 34484 KB] Initial heuristic value for ff: 7
[t=0.0123578s, 34484 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.0126234s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.012652s, 34484 KB] g=5, 26 evaluated, 25 expanded
[t=0.0127711s, 34484 KB] New best heuristic value for ff: 6
[t=0.012795s, 34484 KB] g=6, 43 evaluated, 39 expanded
[t=0.0128233s, 34484 KB] New best heuristic value for ff: 5
[t=0.0128455s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=0.012865s, 34484 KB] g=7, 44 evaluated, 40 expanded
[t=0.0130427s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=0.0130666s, 34484 KB] g=13, 77 evaluated, 61 expanded
[t=0.0136068s, 34484 KB] New best heuristic value for ff: 4
[t=0.0136506s, 34484 KB] g=10, 116 evaluated, 100 expanded
[t=0.0136835s, 34484 KB] New best heuristic value for ff: 3
[t=0.0137064s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=0.0137266s, 34484 KB] g=11, 117 evaluated, 101 expanded
[t=0.013835s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=0.0138585s, 34484 KB] g=15, 132 evaluated, 112 expanded
[t=0.0142888s, 34484 KB] New best heuristic value for ff: 2
[t=0.0143154s, 34484 KB] g=19, 200 evaluated, 172 expanded
[t=0.0143437s, 34484 KB] New best heuristic value for ff: 1
[t=0.0143652s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=0.0143846s, 34484 KB] g=20, 201 evaluated, 173 expanded
[t=0.0145846s, 34484 KB] Solution found!
[t=0.0146088s, 34484 KB] Actual search time: 0.002407s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b1 l1 c1 r1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b1 l1 c1 r1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i1 b1 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pick_item_from_box i2 b1 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
[t=0.0148009s, 34484 KB] Plan length: 15 step(s).
[t=0.0148412s, 34484 KB] Plan cost: 15
[t=0.0148831s, 34484 KB] Expanded 204 state(s).
[t=0.0149206s, 34484 KB] Reopened 4 state(s).
[t=0.0149544s, 34484 KB] Evaluated 232 state(s).
[t=0.0149811s, 34484 KB] Evaluations: 433
[t=0.0150064s, 34484 KB] Generated 444 state(s).
[t=0.015032s, 34484 KB] Dead ends: 27 state(s).
[t=0.0150579s, 34484 KB] Number of registered states: 228
[t=0.0151001s, 34484 KB] Int hash set load factor: 228/256 = 0.890625
[t=0.0151325s, 34484 KB] Int hash set resizes: 8
[t=0.0151654s, 34484 KB] Best solution cost so far: 15
[t=0.0151929s, 34484 KB] Solution found - keep searching
[t=0.015321s, 34484 KB] Building successor generator...done!
[t=0.0154155s, 34484 KB] peak memory difference for successor generator creation: 0 KB
[t=0.0154431s, 34484 KB] time for successor generation creation: 1.249e-06s
[t=0.0154722s, 34484 KB] Variables: 9
[t=0.0154973s, 34484 KB] FactPairs: 25
[t=0.015522s, 34484 KB] Bytes per state: 4
[t=0.0155599s, 34484 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 2)
[t=0.0155976s, 34484 KB] Conducting lazy best first search, (real) bound = 15
[t=0.0156302s, 34484 KB] 8 initial landmarks, 3 goal landmarks
[t=0.0156768s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.0157109s, 34484 KB] New best heuristic value for ff: 7
[t=0.0157419s, 34484 KB] g=0, 1 evaluated, 0 expanded
[t=0.0157864s, 34484 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.0158179s, 34484 KB] Initial heuristic value for ff: 7
[t=0.0162219s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.0162577s, 34484 KB] g=5, 28 evaluated, 27 expanded
[t=0.0164638s, 34484 KB] New best heuristic value for ff: 6
[t=0.0164988s, 34484 KB] g=6, 43 evaluated, 39 expanded
[t=0.0165383s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=0.0165676s, 34484 KB] New best heuristic value for ff: 5
[t=0.0165935s, 34484 KB] g=7, 44 evaluated, 40 expanded
[t=0.0169523s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=0.017s, 34484 KB] g=13, 77 evaluated, 61 expanded
[t=0.0174302s, 34484 KB] New best heuristic value for ff: 4
[t=0.0175027s, 34484 KB] g=10, 113 evaluated, 97 expanded
[t=0.0175731s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=0.0176158s, 34484 KB] New best heuristic value for ff: 3
[t=0.0176615s, 34484 KB] g=11, 114 evaluated, 98 expanded
[t=0.0187088s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=0.0189004s, 34484 KB] New best heuristic value for ff: 2
[t=0.0189445s, 34484 KB] g=13, 189 evaluated, 161 expanded
[t=0.0190194s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=0.0190783s, 34484 KB] New best heuristic value for ff: 1
[t=0.0191154s, 34484 KB] g=14, 190 evaluated, 162 expanded
[t=0.0197524s, 34484 KB] Completely explored state space -- no solution!
[t=0.0198059s, 34484 KB] Actual search time: 0.00416859s
[t=0.0198384s, 34484 KB] Expanded 192 state(s).
[t=0.0198845s, 34484 KB] Reopened 0 state(s).
[t=0.0199141s, 34484 KB] Evaluated 219 state(s).
[t=0.01994s, 34484 KB] Evaluations: 411
[t=0.019966s, 34484 KB] Generated 422 state(s).
[t=0.0199919s, 34484 KB] Dead ends: 27 state(s).
[t=0.020019s, 34484 KB] Number of registered states: 219
[t=0.020045s, 34484 KB] Int hash set load factor: 219/256 = 0.855469
[t=0.0200828s, 34484 KB] Int hash set resizes: 8
[t=0.0201162s, 34484 KB] Best solution cost so far: 15
[t=0.020147s, 34484 KB] No solution found - keep searching
[t=0.0202506s, 34484 KB] Building successor generator...done!
[t=0.0203375s, 34484 KB] peak memory difference for successor generator creation: 0 KB
[t=0.0203641s, 34484 KB] time for successor generation creation: 1.188e-06s
[t=0.0203987s, 34484 KB] Variables: 9
[t=0.0204268s, 34484 KB] FactPairs: 25
[t=0.0204556s, 34484 KB] Bytes per state: 4
[t=0.0205006s, 34484 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 1)
[t=0.0205355s, 34484 KB] Conducting lazy best first search, (real) bound = 15
[t=0.0205718s, 34484 KB] 8 initial landmarks, 3 goal landmarks
[t=0.0206172s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.020648s, 34484 KB] New best heuristic value for ff: 7
[t=0.0206782s, 34484 KB] g=0, 1 evaluated, 0 expanded
[t=0.0207228s, 34484 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.0207553s, 34484 KB] Initial heuristic value for ff: 7
[t=0.0210934s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.0211644s, 34484 KB] g=5, 31 evaluated, 30 expanded
[t=0.0213396s, 34484 KB] New best heuristic value for ff: 6
[t=0.021384s, 34484 KB] g=6, 44 evaluated, 40 expanded
[t=0.0214891s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=0.0215371s, 34484 KB] New best heuristic value for ff: 5
[t=0.0215776s, 34484 KB] g=7, 50 evaluated, 46 expanded
[t=0.0218203s, 34484 KB] New best heuristic value for ff: 4
[t=0.0218658s, 34484 KB] g=10, 76 evaluated, 60 expanded
[t=0.0219577s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=0.0219993s, 34484 KB] New best heuristic value for ff: 3
[t=0.0220369s, 34484 KB] g=11, 81 evaluated, 65 expanded
[t=0.0229024s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=0.0229569s, 34484 KB] New best heuristic value for ff: 2
[t=0.0229988s, 34484 KB] g=13, 177 evaluated, 149 expanded
[t=0.0230756s, 34484 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=0.0231176s, 34484 KB] New best heuristic value for ff: 1
[t=0.023157s, 34484 KB] g=14, 180 evaluated, 152 expanded
[t=0.0237289s, 34484 KB] Completely explored state space -- no solution!
[t=0.0237798s, 34484 KB] Actual search time: 0.0032115s
[t=0.0238232s, 34484 KB] Expanded 192 state(s).
[t=0.0238637s, 34484 KB] Reopened 0 state(s).
[t=0.0239017s, 34484 KB] Evaluated 219 state(s).
[t=0.0239402s, 34484 KB] Evaluations: 411
[t=0.0239793s, 34484 KB] Generated 422 state(s).
[t=0.0240245s, 34484 KB] Dead ends: 27 state(s).
[t=0.0240604s, 34484 KB] Number of registered states: 219
[t=0.0240968s, 34484 KB] Int hash set load factor: 219/256 = 0.855469
[t=0.0241327s, 34484 KB] Int hash set resizes: 8
[t=0.0241711s, 34484 KB] Best solution cost so far: 15
[t=0.02421s, 34484 KB] No solution found - keep searching
[t=0.024256s, 34484 KB] Actual search time: 0.0197101s
[t=0.0243013s, 34484 KB] Cumulative statistics:
[t=0.0243013s, 34484 KB] Expanded 891 state(s).
[t=0.0243013s, 34484 KB] Reopened 21 state(s).
[t=0.0243013s, 34484 KB] Evaluated 1017 state(s).
[t=0.0243013s, 34484 KB] Evaluations: 1890
[t=0.0243013s, 34484 KB] Generated 1932 state(s).
[t=0.0243013s, 34484 KB] Dead ends: 0 state(s).
[t=0.0243013s, 34484 KB] Search time: 0.0197204s
[t=0.0243013s, 34484 KB] Total time: 0.0243013s
Solution found.
Peak memory: 34484 KB
Remove intermediate file output.sas
search exit code: 0
