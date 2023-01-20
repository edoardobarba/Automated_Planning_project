#Results problem 1 instance 2
commands given from problem1 folder
It is required the installation of fast downward and planutils planners 


#A*(goalcount)

./DOWNWARD/fast-downward.py /domain1.pddl /problem1_instance2.pddl --search "astar(goalcount)"


INFO     planner time limit: None
INFO     planner memory limit: None

INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /home/edo/Documents/GitHub/Automated_Planning_project/problem1/DOWNWARD/builds/release/bin/translate/translate.py ../domain1.pddl ../problem1_instance2.pddl --sas-file output.sas
Parsing...
Parsing: [0.010s CPU, 0.003s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.000s wall-clock]
Normalizing Datalog program...
Trivial rules: Converted to facts.
Normalizing Datalog program: [0.000s CPU, 0.003s wall-clock]
Preparing model... [0.000s CPU, 0.001s wall-clock]
Generated 82 rules.
Computing model... [0.000s CPU, 0.004s wall-clock]
292 relevant atoms
322 auxiliary atoms
614 final queue length
822 total queue pushes
Completing instantiation... [0.000s CPU, 0.006s wall-clock]
Instantiating: [0.010s CPU, 0.014s wall-clock]
Computing fact groups...
Finding invariants...
26 initial candidates
Finding invariants: [0.010s CPU, 0.005s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.001s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
6 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.010s CPU, 0.007s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Translator axioms removed by simplifying: 0
Computing negative axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.001s wall-clock]
Translating task: [0.010s CPU, 0.010s wall-clock]
12 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
2 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.003s wall-clock]
Reordering and filtering variables...
17 of 17 variables necessary.
9 of 11 mutex groups necessary.
168 of 168 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.002s wall-clock]
Translator variables: 17
Translator derived variables: 0
Translator facts: 67
Translator goal facts: 6
Translator mutex groups: 9
Translator total mutex groups size: 42
Translator operators: 168
Translator axioms: 0
Translator task size: 1137
Translator peak memory: 40908 KB
Writing output... [0.010s CPU, 0.002s wall-clock]
Done! [0.050s CPU, 0.043s wall-clock]
translate exit code: 0

INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /home/edo/Documents/GitHub/Automated_Planning_project/problem1/DOWNWARD/builds/release/bin/downward --search 'astar(goalcount)' --internal-plan-file sas_plan < output.sas
[t=4.4997e-05s, 9884 KB] reading input...
[t=0.00114134s, 9884 KB] done reading input!
[t=0.00263643s, 10272 KB] Initializing goal count heuristic...
[t=0.00280278s, 10272 KB] Building successor generator...done!
[t=0.00309834s, 10272 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00313545s, 10272 KB] time for successor generation creation: 0.000145926s
[t=0.00316724s, 10272 KB] Variables: 17
[t=0.00319361s, 10272 KB] FactPairs: 67
[t=0.00323785s, 10272 KB] Bytes per state: 8
[t=0.0034227s, 10272 KB] Conducting best first search with reopening closed nodes, (real) bound = 2147483647
[t=0.0035083s, 10272 KB] New best heuristic value for goalcount: 6
[t=0.00353857s, 10272 KB] g=0, 1 evaluated, 0 expanded
[t=0.00357157s, 10272 KB] f = 6, 1 evaluated, 0 expanded
[t=0.00361354s, 10272 KB] Initial heuristic value for goalcount: 6
[t=0.00365698s, 10272 KB] pruning method: none
[t=0.0037423s, 10272 KB] f = 7, 12 evaluated, 1 expanded
[t=0.00388472s, 10272 KB] f = 8, 36 evaluated, 12 expanded
[t=0.00432663s, 10272 KB] f = 9, 222 evaluated, 36 expanded
[t=0.00550177s, 10272 KB] f = 10, 477 evaluated, 222 expanded
[t=0.0093184s, 10272 KB] f = 11, 1848 evaluated, 477 expanded
[t=0.0153504s, 10408 KB] f = 12, 3474 evaluated, 1848 expanded
[t=0.0173772s, 10408 KB] New best heuristic value for goalcount: 5
[t=0.0174507s, 10408 KB] g=7, 3997 evaluated, 1945 expanded
[t=0.0269898s, 10676 KB] f = 13, 9522 evaluated, 3510 expanded
[t=0.0434776s, 11072 KB] f = 14, 16911 evaluated, 9522 expanded
[t=0.0801713s, 11864 KB] f = 15, 36456 evaluated, 17451 expanded
[t=0.0841264s, 11872 KB] New best heuristic value for goalcount: 4
[t=0.0842304s, 11872 KB] g=11, 38881 evaluated, 18004 expanded
[t=0.138736s, 13308 KB] f = 16, 63816 evaluated, 36609 expanded
[t=0.226857s, 16472 KB] f = 17, 119558 evaluated, 67128 expanded
[t=0.352906s, 18132 KB] f = 18, 206919 evaluated, 121394 expanded
[t=0.361783s, 18400 KB] New best heuristic value for goalcount: 3
[t=0.361849s, 18400 KB] g=15, 214111 evaluated, 123435 expanded
[t=0.596442s, 24488 KB] f = 19, 356163 evaluated, 217983 expanded
[t=0.979659s, 35636 KB] f = 20, 588507 evaluated, 364731 expanded
[t=1.6088s, 59312 KB] f = 21, 932938 evaluated, 611979 expanded
[t=1.62712s, 59312 KB] New best heuristic value for goalcount: 2
[t=1.62722s, 59312 KB] g=19, 941035 evaluated, 614972 expanded
[t=2.45561s, 67228 KB] f = 22, 1416393 evaluated, 953287 expanded
[t=3.6215s, 109044 KB] f = 23, 2045529 evaluated, 1452777 expanded
[t=4.99212s, 122860 KB] f = 24, 2804214 evaluated, 2075517 expanded
[t=4.9969s, 122996 KB] New best heuristic value for goalcount: 1
[t=4.99698s, 122996 KB] g=23, 2807020 evaluated, 2076946 expanded
[t=6.79853s, 204076 KB] f = 25, 3674040 evaluated, 2848530 expanded
[t=8.60177s, 205272 KB] f = 26, 4575763 evaluated, 3710607 expanded
[t=10.4896s, 229556 KB] f = 27, 5461317 evaluated, 4617607 expanded
[t=10.4903s, 229556 KB] New best heuristic value for goalcount: 0
[t=10.4904s, 229556 KB] g=27, 5461678 evaluated, 4617872 expanded
[t=10.4904s, 229556 KB] Solution found!
[t=10.4904s, 229556 KB] Actual search time: 10.4867s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b1 l1 c1 r1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b1 l1 c1 r1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_item_from_location i4 l1 c1 r1 (1)
put_item_in_box i4 b1 l1 c1 r1 (1)
pickup_item_from_location i5 l1 c1 r1 (1)
put_item_in_box i5 b1 l1 c1 r1 (1)
pickup_item_from_location i6 l1 c1 r1 (1)
put_item_in_box i6 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i1 b1 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pick_item_from_box i2 b1 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
pick_item_from_box i4 b1 l2 c1 r1 (1)
pickdown_food i4 l2 c1 r1 p2 (1)
pick_item_from_box i5 b1 l2 c1 r1 (1)
pickdown_medicine i5 l2 c1 r1 p2 (1)
pick_item_from_box i6 b1 l2 c1 r1 (1)
pickdown_tool i6 l2 c1 r1 p2 (1)
[t=10.4904s, 229556 KB] Plan length: 27 step(s).
[t=10.4904s, 229556 KB] Plan cost: 27
[t=10.4904s, 229556 KB] Expanded 4617873 state(s).
[t=10.4904s, 229556 KB] Reopened 0 state(s).
[t=10.4904s, 229556 KB] Evaluated 5461678 state(s).
[t=10.4904s, 229556 KB] Evaluations: 5461678
[t=10.4904s, 229556 KB] Generated 14891095 state(s).
[t=10.4904s, 229556 KB] Dead ends: 0 state(s).
[t=10.4904s, 229556 KB] Expanded until last jump: 4617607 state(s).
[t=10.4904s, 229556 KB] Reopened until last jump: 0 state(s).
[t=10.4904s, 229556 KB] Evaluated until last jump: 5461317 state(s).
[t=10.4904s, 229556 KB] Generated until last jump: 14890121 state(s).
[t=10.4904s, 229556 KB] Number of registered states: 5461678
[t=10.4904s, 229556 KB] Int hash set load factor: 5461678/8388608 = 0.651083
[t=10.4904s, 229556 KB] Int hash set resizes: 23
[t=10.4904s, 229556 KB] Search time: 10.487s
[t=10.4904s, 229556 KB] Total time: 10.4904s
Solution found.
Peak memory: 229556 KB
Remove intermediate file output.sas
search exit code: 0

INFO     Planner time: 10.66s



#FF

planutils run ff domain1.pddl problem1_instance2.pddl 

ff: parsing domain file
domain 'DOMAIN1' defined
 ... done.
ff: parsing problem file
problem 'PROBLEM_EXAMPLE1' defined
 ... done.



Cueing down from goal distance:   10 into depth [1][2][3][4][5][6][7]

Enforced Hill-climbing failed !
switching to Best-first Search now.

advancing to distance :   10
                           9
                           8
                           7
                           6
                           5
                           4
                           3
                           2
                           1
                           0

ff: found legal plan as follows

step    0: PICKUP_ITEM_FROM_LOCATION I3 L1 C1 R1
        1: PUT_ITEM_IN_BOX I3 B3 L1 C1 R1
        2: PICKUP_ITEM_FROM_LOCATION I2 L1 C1 R1
        3: PUT_ITEM_IN_BOX I2 B3 L1 C1 R1
        4: PICKUP_ITEM_FROM_LOCATION I1 L1 C1 R1
        5: PUT_ITEM_IN_BOX I1 B3 L1 C1 R1
        6: PICKUP_BOX B3 R1 C1 L1
        7: MOVE_ROBOT_WITH_BOX R1 L1 L2 C1 B3
        8: PICKDOWN_BOX B3 R1 C1 L2
        9: PICK_ITEM_FROM_BOX I3 B3 L2 C1 R1
       10: PICKDOWN_TOOL I3 L2 C1 R1 P1
       11: PICK_ITEM_FROM_BOX I2 B3 L2 C1 R1
       12: PICKDOWN_MEDICINE I2 L2 C1 R1 P1
       13: PICK_ITEM_FROM_BOX I1 B3 L2 C1 R1
       14: PICKDOWN_FOOD I1 L2 C1 R1 P1
       15: MOVE_ROBOT_WITHOUT_BOX R1 L2 L1 C1
       16: PICKUP_ITEM_FROM_LOCATION I6 L1 C1 R1
       17: PUT_ITEM_IN_BOX I6 B2 L1 C1 R1
       18: PICKUP_ITEM_FROM_LOCATION I5 L1 C1 R1
       19: PUT_ITEM_IN_BOX I5 B2 L1 C1 R1
       20: PICKUP_ITEM_FROM_LOCATION I4 L1 C1 R1
       21: PUT_ITEM_IN_BOX I4 B2 L1 C1 R1
       22: PICKUP_BOX B2 R1 C1 L1
       23: MOVE_ROBOT_WITH_BOX R1 L1 L2 C1 B2
       24: PICKDOWN_BOX B2 R1 C1 L2
       25: PICK_ITEM_FROM_BOX I6 B2 L2 C1 R1
       26: PICKDOWN_TOOL I6 L2 C1 R1 P2
       27: PICK_ITEM_FROM_BOX I5 B2 L2 C1 R1
       28: PICKDOWN_MEDICINE I5 L2 C1 R1 P2
       29: PICK_ITEM_FROM_BOX I4 B2 L2 C1 R1
       30: PICKDOWN_FOOD I4 L2 C1 R1 P2
     

time spent:    0.00 seconds instantiating 192 easy, 0 hard action templates
               0.00 seconds reachability analysis, yielding 64 facts and 180 actions
               0.00 seconds creating final representation with 61 relevant facts
               0.00 seconds building connectivity graph
               2.42 seconds searching, evaluating 35952 states, to a max depth of 7
               2.42 seconds total time




#Lama-First
planutils run lama-first domain1.pddl problem1_instance2.pddl 
INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /workspace/downward/builds/release/bin/translate/translate.py domain1.pddl problem1_instance2.pddl --sas-file output.sas
Parsing...
Parsing: [0.000s CPU, 0.002s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.000s wall-clock]
Normalizing Datalog program...
Trivial rules: Converted to facts.
Normalizing Datalog program: [0.000s CPU, 0.004s wall-clock]
Preparing model... [0.010s CPU, 0.002s wall-clock]
Generated 82 rules.
Computing model... [0.000s CPU, 0.005s wall-clock]
292 relevant atoms
322 auxiliary atoms
614 final queue length
822 total queue pushes
Completing instantiation... [0.010s CPU, 0.007s wall-clock]
Instantiating: [0.020s CPU, 0.019s wall-clock]
Computing fact groups...
Finding invariants...
26 initial candidates
Finding invariants: [0.000s CPU, 0.007s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.010s CPU, 0.001s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
6 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.010s CPU, 0.009s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Translator axioms removed by simplifying: 0
Computing negative axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.001s wall-clock]
Translating task: [0.010s CPU, 0.010s wall-clock]
12 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
2 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.007s wall-clock]
Reordering and filtering variables...
17 of 17 variables necessary.
9 of 11 mutex groups necessary.
168 of 168 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.002s wall-clock]
Translator variables: 17
Translator derived variables: 0
Translator facts: 67
Translator goal facts: 6
Translator mutex groups: 9
Translator total mutex groups size: 42
Translator operators: 168
Translator axioms: 0
Translator task size: 1137
Translator peak memory: 39948 KB
Writing output... [0.010s CPU, 0.005s wall-clock]
Done! [0.050s CPU, 0.057s wall-clock]
translate exit code: 0

INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /workspace/downward/builds/release/bin/downward --evaluator 'hlm=lmcount(lm_factory=lm_rhw(reasonable_orders=true),transform=adapt_costs(one),pref=false)' --evaluator 'hff=ff(transform=adapt_costs(one))' --search 'lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,reopen_closed=false)' --internal-plan-file sas_plan < output.sas
[t=0.00139568s, 33964 KB] reading input...
[t=0.00393634s, 33964 KB] done reading input!
[t=0.00555464s, 34220 KB] Initializing landmarks count heuristic...
[t=0.00562499s, 34220 KB] Initializing Exploration...
[t=0.00581708s, 34372 KB] Generating landmarks using the RPG/SAS+ approach
approx. reasonable orders
[t=0.00640397s, 34372 KB] approx. obedient reasonable orders
[t=0.00645515s, 34372 KB] Removed 0 reasonable or obedient reasonable orders
[t=0.0068726s, 34372 KB] Landmarks generation time: 0.00130433s
[t=0.00691626s, 34372 KB] Discovered 18 landmarks, of which 3 are disjunctive and 0 are conjunctive.
[t=0.00694514s, 34372 KB] 25 edges
[t=0.00709176s, 34372 KB] Simplifying 312 unary operators... done! [312 unary operators]
[t=0.0074402s, 34372 KB] time to simplify: 0.000397542s
[t=0.00751781s, 34372 KB] Initializing additive heuristic...
[t=0.00754742s, 34372 KB] Initializing FF heuristic...
[t=0.00764972s, 34372 KB] Building successor generator...done!
[t=0.00782706s, 34372 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00785251s, 34372 KB] time for successor generation creation: 9.9433e-05s
[t=0.00789442s, 34372 KB] Variables: 17
[t=0.00791944s, 34372 KB] FactPairs: 67
[t=0.00794534s, 34372 KB] Bytes per state: 8
[t=0.00805574s, 34372 KB] Conducting lazy best first search, (real) bound = 2147483647
[t=0.00811744s, 34372 KB] 8 initial landmarks, 6 goal landmarks
[t=0.00816621s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 10
[t=0.00819351s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 10
[t=0.00821831s, 34372 KB] g=0, 1 evaluated, 0 expanded
[t=0.00825831s, 34372 KB] Initial heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 10
[t=0.00830218s, 34372 KB] Initial heuristic value for ff(transform = adapt_costs(one)): 10
[t=0.00951487s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 9
[t=0.0095613s, 34372 KB] g=5, 98 evaluated, 97 expanded
[t=0.0143336s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 9
[t=0.0144099s, 34372 KB] g=6, 478 evaluated, 477 expanded
[t=0.0146154s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 8
[t=0.014648s, 34372 KB] g=11, 492 evaluated, 491 expanded
[t=0.0211552s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 8
[t=0.021224s, 34372 KB] g=14, 1184 evaluated, 1183 expanded
[t=0.0212823s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 7
[t=0.0213078s, 34372 KB] g=17, 1188 evaluated, 1187 expanded
[t=0.0242142s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 6
[t=0.024256s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 7
[t=0.0242891s, 34372 KB] g=22, 1551 evaluated, 1547 expanded
[t=0.0266507s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 5
[t=0.0266892s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 6
[t=0.0267091s, 34372 KB] g=32, 1872 evaluated, 1850 expanded
[t=0.0267375s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 4
[t=0.0267581s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 5
[t=0.026776s, 34372 KB] g=33, 1873 evaluated, 1851 expanded
[t=0.0276862s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 3
[t=0.0278177s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 4
[t=0.0278559s, 34372 KB] g=42, 1975 evaluated, 1947 expanded
[t=0.0279219s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 2
[t=0.0279712s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 3
[t=0.028013s, 34372 KB] g=43, 1976 evaluated, 1948 expanded
[t=0.0290351s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 2
[t=0.0290971s, 34372 KB] g=51, 2033 evaluated, 2002 expanded
[t=0.0291406s, 34372 KB] New best heuristic value for lmcount(lm_factory = lm_rhw(reasonable_orders = true), transform = adapt_costs(one), pref = false): 1
[t=0.0291707s, 34372 KB] New best heuristic value for ff(transform = adapt_costs(one)): 1
[t=0.0292s, 34372 KB] g=52, 2034 evaluated, 2003 expanded
[t=0.0292383s, 34372 KB] Solution found!
[t=0.0292708s, 34372 KB] Actual search time: 0.021151s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b3 l1 c1 r1 (1)
pickup_box b3 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b3 (1)
pickdown_box b3 r1 c1 l2 (1)
pick_item_from_box i1 b3 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
move_robot_without_box r1 l2 l1 c1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b2 l1 c1 r1 (1)
pickup_box b2 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b2 (1)
pickdown_box b2 r1 c1 l2 (1)
pick_item_from_box i2 b2 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
move_robot_without_box r1 l2 l1 c1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i4 l1 c1 r1 (1)
put_item_in_box i4 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i4 b1 l2 c1 r1 (1)
pickdown_food i4 l2 c1 r1 p2 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i5 l1 c1 r1 (1)
put_item_in_box i5 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i5 b1 l2 c1 r1 (1)
pickdown_medicine i5 l2 c1 r1 p2 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i6 l1 c1 r1 (1)
put_item_in_box i6 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i6 b1 l2 c1 r1 (1)
pickdown_tool i6 l2 c1 r1 p2 (1)
[t=0.0293013s, 34372 KB] Plan length: 53 step(s).
[t=0.0293013s, 34372 KB] Plan cost: 53
[t=0.0293013s, 34372 KB] Expanded 2004 state(s).
[t=0.0293013s, 34372 KB] Reopened 0 state(s).
[t=0.0293013s, 34372 KB] Evaluated 2035 state(s).
[t=0.0293013s, 34372 KB] Evaluations: 4040
[t=0.0293013s, 34372 KB] Generated 8273 state(s).
[t=0.0293013s, 34372 KB] Dead ends: 30 state(s).
[t=0.0293013s, 34372 KB] Number of registered states: 2035
[t=0.0293013s, 34372 KB] Int hash set load factor: 2035/4096 = 0.496826
[t=0.0293013s, 34372 KB] Int hash set resizes: 12
[t=0.0293013s, 34372 KB] Search time: 0.0212463s
[t=0.0293013s, 34372 KB] Total time: 0.0293013s
Solution found.
Peak memory: 34372 KB
Remove intermediate file output.sas
search exit code: 0




#Lama
planutils run lama domain1.pddl problem1_instance2.pddl 
INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /workspace/downward/builds/release/bin/translate/translate.py domain1.pddl problem1_instance2.pddl --sas-file output.sas
Parsing...
Parsing: [0.000s CPU, 0.002s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.010s CPU, 0.000s wall-clock]
Normalizing Datalog program...
Trivial rules: Converted to facts.
Normalizing Datalog program: [0.000s CPU, 0.004s wall-clock]
Preparing model... [0.000s CPU, 0.002s wall-clock]
Generated 82 rules.
Computing model... [0.010s CPU, 0.005s wall-clock]
292 relevant atoms
322 auxiliary atoms
614 final queue length
822 total queue pushes
Completing instantiation... [0.000s CPU, 0.005s wall-clock]
Instantiating: [0.020s CPU, 0.017s wall-clock]
Computing fact groups...
Finding invariants...
26 initial candidates
Finding invariants: [0.010s CPU, 0.005s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.001s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
6 uncovered facts
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
Processing axioms: [0.000s CPU, 0.001s wall-clock]
Translating task: [0.010s CPU, 0.012s wall-clock]
12 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
2 propositions removed
Detecting unreachable propositions: [0.010s CPU, 0.005s wall-clock]
Reordering and filtering variables...
17 of 17 variables necessary.
9 of 11 mutex groups necessary.
168 of 168 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.002s wall-clock]
Translator variables: 17
Translator derived variables: 0
Translator facts: 67
Translator goal facts: 6
Translator mutex groups: 9
Translator total mutex groups size: 42
Translator operators: 168
Translator axioms: 0
Translator task size: 1137
Translator peak memory: 39948 KB
Writing output... [0.010s CPU, 0.004s wall-clock]
Done! [0.060s CPU, 0.053s wall-clock]
translate exit code: 0

INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /workspace/downward/builds/release/bin/downward --if-unit-cost --evaluator 'hlm=lmcount(lm_rhw(reasonable_orders=true),pref=false)' --evaluator 'hff=ff()' --search 'iterated([lazy_greedy([hff,hlm],preferred=[hff,hlm]),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=5),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=3),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=2),lazy_wastar([hff,hlm],preferred=[hff,hlm],w=1)],repeat_last=true,continue_on_fail=true)' --if-non-unit-cost --evaluator 'hlm1=lmcount(lm_rhw(reasonable_orders=true),transform=adapt_costs(one),pref=false)' --evaluator 'hff1=ff(transform=adapt_costs(one))' --evaluator 'hlm2=lmcount(lm_rhw(reasonable_orders=true),transform=adapt_costs(plusone),pref=false)' --evaluator 'hff2=ff(transform=adapt_costs(plusone))' --search 'iterated([lazy_greedy([hff1,hlm1],preferred=[hff1,hlm1],cost_type=one,reopen_closed=false),lazy_greedy([hff2,hlm2],preferred=[hff2,hlm2],reopen_closed=false),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=5),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=3),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=2),lazy_wastar([hff2,hlm2],preferred=[hff2,hlm2],w=1)],repeat_last=true,continue_on_fail=true)' --always --internal-plan-file sas_plan < output.sas
[t=0.0011665s, 33964 KB] reading input...
[t=0.00300318s, 33964 KB] done reading input!
[t=0.00470029s, 34220 KB] Initializing landmarks count heuristic...
[t=0.00476752s, 34220 KB] Initializing Exploration...
[t=0.00488943s, 34356 KB] Generating landmarks using the RPG/SAS+ approach
approx. reasonable orders
[t=0.00536203s, 34356 KB] approx. obedient reasonable orders
[t=0.00542357s, 34356 KB] Removed 0 reasonable or obedient reasonable orders
[t=0.00582996s, 34356 KB] Landmarks generation time: 0.00113231s
[t=0.00589284s, 34356 KB] Discovered 18 landmarks, of which 3 are disjunctive and 0 are conjunctive.
[t=0.00591663s, 34356 KB] 25 edges
[t=0.00605517s, 34356 KB] Simplifying 312 unary operators... done! [312 unary operators]
[t=0.00641026s, 34356 KB] time to simplify: 0.000407785s
[t=0.00648452s, 34356 KB] Initializing additive heuristic...
[t=0.00651368s, 34356 KB] Initializing FF heuristic...
[t=0.00671006s, 34356 KB] Building successor generator...done!
[t=0.00694237s, 34356 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00697691s, 34356 KB] time for successor generation creation: 0.000134277s
[t=0.00702183s, 34356 KB] Variables: 17
[t=0.00705477s, 34356 KB] FactPairs: 67
[t=0.00709807s, 34356 KB] Bytes per state: 8
[t=0.00779491s, 34620 KB] Building successor generator...done!
[t=0.0080366s, 34620 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00805872s, 34620 KB] time for successor generation creation: 3.0885e-05s
[t=0.00810448s, 34620 KB] Variables: 17
[t=0.00812984s, 34620 KB] FactPairs: 67
[t=0.0081538s, 34620 KB] Bytes per state: 8
[t=0.00821173s, 34620 KB] Starting search: lazy_greedy(list(hff, hlm), preferred = list(hff, hlm))
[t=0.00824859s, 34620 KB] Conducting lazy best first search, (real) bound = 2147483647
[t=0.0083038s, 34620 KB] 8 initial landmarks, 6 goal landmarks
[t=0.00842118s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=0.00847704s, 34620 KB] New best heuristic value for ff: 10
[t=0.00851674s, 34620 KB] g=0, 1 evaluated, 0 expanded
[t=0.00857172s, 34620 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=0.00860784s, 34620 KB] Initial heuristic value for ff: 10
[t=0.0104731s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 9
[t=0.0105393s, 34620 KB] g=5, 98 evaluated, 97 expanded
[t=0.0144414s, 34620 KB] New best heuristic value for ff: 9
[t=0.0144852s, 34620 KB] g=6, 478 evaluated, 477 expanded
[t=0.0146479s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 8
[t=0.0146777s, 34620 KB] g=11, 492 evaluated, 491 expanded
[t=0.0243481s, 34620 KB] New best heuristic value for ff: 8
[t=0.0244597s, 34620 KB] g=14, 1184 evaluated, 1183 expanded
[t=0.0245234s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.0245497s, 34620 KB] g=17, 1188 evaluated, 1187 expanded
[t=0.0285552s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.0286398s, 34620 KB] New best heuristic value for ff: 7
[t=0.028663s, 34620 KB] g=22, 1551 evaluated, 1547 expanded
[t=0.0309402s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=0.0309737s, 34620 KB] New best heuristic value for ff: 6
[t=0.0309949s, 34620 KB] g=32, 1872 evaluated, 1850 expanded
[t=0.0310269s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=0.0310499s, 34620 KB] New best heuristic value for ff: 5
[t=0.0310694s, 34620 KB] g=33, 1873 evaluated, 1851 expanded
[t=0.0320478s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=0.0320913s, 34620 KB] New best heuristic value for ff: 4
[t=0.0321138s, 34620 KB] g=42, 1975 evaluated, 1947 expanded
[t=0.0321469s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=0.0321704s, 34620 KB] New best heuristic value for ff: 3
[t=0.0321907s, 34620 KB] g=43, 1976 evaluated, 1948 expanded
[t=0.0328405s, 34620 KB] New best heuristic value for ff: 2
[t=0.0329275s, 34620 KB] g=51, 2033 evaluated, 2002 expanded
[t=0.032976s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=0.0330168s, 34620 KB] New best heuristic value for ff: 1
[t=0.0330677s, 34620 KB] g=52, 2034 evaluated, 2003 expanded
[t=0.0331303s, 34620 KB] Solution found!
[t=0.0331797s, 34620 KB] Actual search time: 0.0248662s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b3 l1 c1 r1 (1)
pickup_box b3 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b3 (1)
pickdown_box b3 r1 c1 l2 (1)
pick_item_from_box i1 b3 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
move_robot_without_box r1 l2 l1 c1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b2 l1 c1 r1 (1)
pickup_box b2 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b2 (1)
pickdown_box b2 r1 c1 l2 (1)
pick_item_from_box i2 b2 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
move_robot_without_box r1 l2 l1 c1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i3 b1 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i4 l1 c1 r1 (1)
put_item_in_box i4 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i4 b1 l2 c1 r1 (1)
pickdown_food i4 l2 c1 r1 p2 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i5 l1 c1 r1 (1)
put_item_in_box i5 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i5 b1 l2 c1 r1 (1)
pickdown_medicine i5 l2 c1 r1 p2 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i6 l1 c1 r1 (1)
put_item_in_box i6 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i6 b1 l2 c1 r1 (1)
pickdown_tool i6 l2 c1 r1 p2 (1)
[t=0.0340394s, 34620 KB] Plan length: 53 step(s).
[t=0.0341725s, 34620 KB] Plan cost: 53
[t=0.0342331s, 34620 KB] Expanded 2004 state(s).
[t=0.0343133s, 34620 KB] Reopened 0 state(s).
[t=0.0343662s, 34620 KB] Evaluated 2035 state(s).
[t=0.0344132s, 34620 KB] Evaluations: 4040
[t=0.0344643s, 34620 KB] Generated 8273 state(s).
[t=0.0345255s, 34620 KB] Dead ends: 30 state(s).
[t=0.0345781s, 34620 KB] Number of registered states: 2035
[t=0.0346131s, 34620 KB] Int hash set load factor: 2035/4096 = 0.496826
[t=0.0346476s, 34620 KB] Int hash set resizes: 12
[t=0.0346793s, 34620 KB] Best solution cost so far: 53
[t=0.0347292s, 34620 KB] Solution found - keep searching
[t=0.0351874s, 34620 KB] Building successor generator...done!
[t=0.035298s, 34620 KB] peak memory difference for successor generator creation: 0 KB
[t=0.0353301s, 34620 KB] time for successor generation creation: 1.343e-06s
[t=0.0353855s, 34620 KB] Variables: 17
[t=0.0354204s, 34620 KB] FactPairs: 67
[t=0.0354532s, 34620 KB] Bytes per state: 8
[t=0.0355068s, 34620 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 5)
[t=0.0355551s, 34620 KB] Conducting lazy best first search, (real) bound = 53
[t=0.0356004s, 34620 KB] 8 initial landmarks, 6 goal landmarks
[t=0.0356684s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=0.0357034s, 34620 KB] New best heuristic value for ff: 10
[t=0.0357313s, 34620 KB] g=0, 1 evaluated, 0 expanded
[t=0.0357852s, 34620 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=0.0358243s, 34620 KB] Initial heuristic value for ff: 10
[t=0.0412506s, 34620 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 9
[t=0.0414373s, 34620 KB] g=5, 254 evaluated, 253 expanded
[t=0.109141s, 35148 KB] New best heuristic value for ff: 9
[t=0.109204s, 35148 KB] g=9, 5244 evaluated, 5243 expanded, 28 reopened
[t=0.109237s, 35148 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 8
[t=0.109259s, 35148 KB] New best heuristic value for ff: 8
[t=0.109277s, 35148 KB] g=10, 5245 evaluated, 5244 expanded, 28 reopened
[t=0.109329s, 35280 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.109364s, 35280 KB] g=12, 5248 evaluated, 5247 expanded, 28 reopened
[t=0.109419s, 35280 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.109444s, 35280 KB] New best heuristic value for ff: 7
[t=0.109462s, 35280 KB] g=14, 5251 evaluated, 5250 expanded, 28 reopened
[t=0.186262s, 36328 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=0.186333s, 36328 KB] New best heuristic value for ff: 6
[t=0.186353s, 36328 KB] g=22, 14012 evaluated, 14011 expanded, 68 reopened
[t=0.18638s, 36328 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=0.186434s, 36328 KB] New best heuristic value for ff: 5
[t=0.186469s, 36328 KB] g=23, 14013 evaluated, 14012 expanded, 68 reopened
[t=0.226954s, 36856 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=0.227035s, 36856 KB] New best heuristic value for ff: 4
[t=0.227055s, 36856 KB] g=30, 18586 evaluated, 18521 expanded, 132 reopened
[t=0.227083s, 36856 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=0.227103s, 36856 KB] New best heuristic value for ff: 3
[t=0.227119s, 36856 KB] g=31, 18587 evaluated, 18522 expanded, 132 reopened
[t=0.266481s, 37384 KB] New best heuristic value for ff: 2
[t=0.266562s, 37384 KB] g=39, 23360 evaluated, 23183 expanded, 168 reopened
[t=0.266594s, 37384 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=0.266615s, 37384 KB] New best heuristic value for ff: 1
[t=0.266633s, 37384 KB] g=40, 23361 evaluated, 23184 expanded, 168 reopened
[t=0.266657s, 37384 KB] Solution found!
[t=0.266678s, 37384 KB] Actual search time: 0.231054s
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b3 l1 c1 r1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b3 l1 c1 r1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b3 l1 c1 r1 (1)
pickup_box b3 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b3 (1)
pickdown_box b3 r1 c1 l2 (1)
pick_item_from_box i1 b3 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pick_item_from_box i2 b3 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pick_item_from_box i3 b3 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
move_robot_without_box r1 l2 l1 c1 (1)
pickup_item_from_location i4 l1 c1 r1 (1)
put_item_in_box i4 b2 l1 c1 r1 (1)
pickup_box b2 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b2 (1)
pickdown_box b2 r1 c1 l2 (1)
pick_item_from_box i4 b2 l2 c1 r1 (1)
pickdown_food i4 l2 c1 r1 p2 (1)
move_robot_without_box r1 l2 l1 c1 (1)
pickup_item_from_location i5 l1 c1 r1 (1)
put_item_in_box i5 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i5 b1 l2 c1 r1 (1)
pickdown_medicine i5 l2 c1 r1 p2 (1)
pickup_box b1 r1 c1 l2 (1)
move_robot_with_box r1 l2 l1 c1 b1 (1)
pickdown_box b1 r1 c1 l1 (1)
pickup_item_from_location i6 l1 c1 r1 (1)
put_item_in_box i6 b1 l1 c1 r1 (1)
pickup_box b1 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b1 (1)
pickdown_box b1 r1 c1 l2 (1)
pick_item_from_box i6 b1 l2 c1 r1 (1)
pickdown_tool i6 l2 c1 r1 p2 (1)
[t=0.266929s, 37384 KB] Plan length: 41 step(s).
[t=0.26695s, 37384 KB] Plan cost: 41
[t=0.266968s, 37384 KB] Expanded 23185 state(s).
[t=0.266985s, 37384 KB] Reopened 168 state(s).
[t=0.267002s, 37384 KB] Evaluated 23362 state(s).
[t=0.267018s, 37384 KB] Evaluations: 46380
[t=0.267035s, 37384 KB] Generated 95422 state(s).
[t=0.267051s, 37384 KB] Dead ends: 176 state(s).
[t=0.267068s, 37384 KB] Number of registered states: 23194
[t=0.267085s, 37384 KB] Int hash set load factor: 23194/32768 = 0.707825
[t=0.267103s, 37384 KB] Int hash set resizes: 15
[t=0.267119s, 37384 KB] Best solution cost so far: 41
[t=0.267136s, 37384 KB] Solution found - keep searching
[t=0.267514s, 37384 KB] Building successor generator...done!
[t=0.267574s, 37384 KB] peak memory difference for successor generator creation: 0 KB
[t=0.267595s, 37384 KB] time for successor generation creation: 1.054e-06s
[t=0.267617s, 37384 KB] Variables: 17
[t=0.267634s, 37384 KB] FactPairs: 67
[t=0.267651s, 37384 KB] Bytes per state: 8
[t=0.267702s, 37384 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 3)
[t=0.267733s, 37384 KB] Conducting lazy best first search, (real) bound = 41
[t=0.267768s, 37384 KB] 8 initial landmarks, 6 goal landmarks
[t=0.267811s, 37384 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=0.267837s, 37384 KB] New best heuristic value for ff: 10
[t=0.26786s, 37384 KB] g=0, 1 evaluated, 0 expanded
[t=0.267901s, 37384 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=0.267926s, 37384 KB] Initial heuristic value for ff: 10
[t=0.270505s, 37384 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 9
[t=0.270558s, 37384 KB] g=5, 265 evaluated, 264 expanded
[t=0.302465s, 37384 KB] New best heuristic value for ff: 9
[t=0.302568s, 37384 KB] g=6, 3755 evaluated, 3754 expanded, 2 reopened
[t=0.323777s, 37384 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 8
[t=0.323866s, 37384 KB] g=11, 5118 evaluated, 5117 expanded, 18 reopened
[t=0.352419s, 37384 KB] New best heuristic value for ff: 8
[t=0.352508s, 37384 KB] g=10, 7311 evaluated, 7310 expanded, 22 reopened
[t=0.352632s, 37384 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=0.352664s, 37384 KB] g=12, 7317 evaluated, 7316 expanded, 22 reopened
[t=0.352791s, 37384 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=0.352833s, 37384 KB] New best heuristic value for ff: 7
[t=0.352865s, 37384 KB] g=14, 7323 evaluated, 7322 expanded, 22 reopened
[t=1.01681s, 45440 KB] New best heuristic value for ff: 6
[t=1.01687s, 45440 KB] g=19, 86832 evaluated, 86831 expanded, 2522 reopened
[t=1.0169s, 45440 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=1.01692s, 45440 KB] New best heuristic value for ff: 5
[t=1.01694s, 45440 KB] g=20, 86833 evaluated, 86832 expanded, 2522 reopened
[t=1.01699s, 45440 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=1.01701s, 45440 KB] g=22, 86836 evaluated, 86835 expanded, 2522 reopened
[t=1.69876s, 54584 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=1.69882s, 54584 KB] New best heuristic value for ff: 4
[t=1.69884s, 54584 KB] g=26, 164578 evaluated, 164577 expanded, 4138 reopened
[t=1.69887s, 54584 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=1.69889s, 54584 KB] New best heuristic value for ff: 3
[t=1.69891s, 54584 KB] g=27, 164579 evaluated, 164578 expanded, 4138 reopened
[t=3.18023s, 74232 KB] New best heuristic value for ff: 2
[t=3.18029s, 74232 KB] g=26, 360529 evaluated, 360528 expanded, 28940 reopened
[t=5.48882s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=5.48889s, 99628 KB] New best heuristic value for ff: 1
[t=5.48894s, 99628 KB] g=30, 599912 evaluated, 599894 expanded, 47707 reopened
[t=5.48898s, 99628 KB] Solution found!
[t=5.48903s, 99628 KB] Actual search time: 5.22126s
pickup_item_from_location i4 l1 c1 r1 (1)
put_item_in_box i4 b3 l1 c1 r1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b3 l1 c1 r1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b3 l1 c1 r1 (1)
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b3 l1 c1 r1 (1)
pickup_box b3 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b3 (1)
pickdown_box b3 r1 c1 l2 (1)
pick_item_from_box i1 b3 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p1 (1)
pick_item_from_box i4 b3 l2 c1 r1 (1)
pickdown_food i4 l2 c1 r1 p2 (1)
pick_item_from_box i2 b3 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pick_item_from_box i3 b3 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
move_robot_without_box r1 l2 l1 c1 (1)
pickup_item_from_location i5 l1 c1 r1 (1)
put_item_in_box i5 b2 l1 c1 r1 (1)
pickup_item_from_location i6 l1 c1 r1 (1)
put_item_in_box i6 b2 l1 c1 r1 (1)
pickup_box b2 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b2 (1)
pickdown_box b2 r1 c1 l2 (1)
pick_item_from_box i5 b2 l2 c1 r1 (1)
pickdown_medicine i5 l2 c1 r1 p2 (1)
pick_item_from_box i6 b2 l2 c1 r1 (1)
pickdown_tool i6 l2 c1 r1 p2 (1)
[t=5.48933s, 99628 KB] Plan length: 31 step(s).
[t=5.48935s, 99628 KB] Plan cost: 31
[t=5.48938s, 99628 KB] Expanded 599895 state(s).
[t=5.48941s, 99628 KB] Reopened 47707 state(s).
[t=5.48943s, 99628 KB] Evaluated 599913 state(s).
[t=5.48946s, 99628 KB] Evaluations: 1152102
[t=5.48949s, 99628 KB] Generated 2183557 state(s).
[t=5.48952s, 99628 KB] Dead ends: 17 state(s).
[t=5.48954s, 99628 KB] Number of registered states: 552206
[t=5.48956s, 99628 KB] Int hash set load factor: 552206/1048576 = 0.526625
[t=5.48959s, 99628 KB] Int hash set resizes: 20
[t=5.48961s, 99628 KB] Best solution cost so far: 31
[t=5.48963s, 99628 KB] Solution found - keep searching
[t=5.50818s, 99628 KB] Building successor generator...done!
[t=5.50842s, 99628 KB] peak memory difference for successor generator creation: 0 KB
[t=5.50846s, 99628 KB] time for successor generation creation: 2.001e-06s
[t=5.50853s, 99628 KB] Variables: 17
[t=5.50859s, 99628 KB] FactPairs: 67
[t=5.50863s, 99628 KB] Bytes per state: 8
[t=5.50879s, 99628 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 2)
[t=5.50892s, 99628 KB] Conducting lazy best first search, (real) bound = 31
[t=5.509s, 99628 KB] 8 initial landmarks, 6 goal landmarks
[t=5.50913s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=5.50921s, 99628 KB] New best heuristic value for ff: 10
[t=5.50927s, 99628 KB] g=0, 1 evaluated, 0 expanded
[t=5.50937s, 99628 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=5.50944s, 99628 KB] Initial heuristic value for ff: 10
[t=5.51743s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 9
[t=5.51753s, 99628 KB] g=5, 279 evaluated, 278 expanded
[t=5.52502s, 99628 KB] New best heuristic value for ff: 9
[t=5.52509s, 99628 KB] g=6, 785 evaluated, 784 expanded
[t=5.59115s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 8
[t=5.59122s, 99628 KB] New best heuristic value for ff: 8
[t=5.59124s, 99628 KB] g=10, 6403 evaluated, 6402 expanded, 42 reopened
[t=5.59527s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=5.59535s, 99628 KB] g=12, 6939 evaluated, 6938 expanded, 42 reopened
[t=5.60852s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=5.60869s, 99628 KB] New best heuristic value for ff: 7
[t=5.60872s, 99628 KB] g=14, 8025 evaluated, 8024 expanded, 42 reopened
[t=5.9717s, 99628 KB] New best heuristic value for ff: 6
[t=5.97176s, 99628 KB] g=15, 52708 evaluated, 52707 expanded, 1402 reopened
[t=5.97179s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=5.97182s, 99628 KB] New best heuristic value for ff: 5
[t=5.97183s, 99628 KB] g=16, 52709 evaluated, 52708 expanded, 1402 reopened
[t=5.9719s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=5.97193s, 99628 KB] g=18, 52715 evaluated, 52714 expanded, 1402 reopened
[t=8.33775s, 99628 KB] New best heuristic value for ff: 4
[t=8.33783s, 99628 KB] g=20, 290733 evaluated, 290732 expanded, 7147 reopened
[t=8.33788s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=8.33791s, 99628 KB] New best heuristic value for ff: 3
[t=8.33794s, 99628 KB] g=21, 290734 evaluated, 290733 expanded, 7147 reopened
[t=8.33799s, 99628 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=8.33802s, 99628 KB] New best heuristic value for ff: 2
[t=8.33805s, 99628 KB] g=22, 290735 evaluated, 290734 expanded, 7147 reopened
[t=16.3575s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=16.3576s, 137640 KB] New best heuristic value for ff: 1
[t=16.3576s, 137640 KB] g=26, 1004839 evaluated, 1004790 expanded, 39375 reopened
[t=16.3577s, 137640 KB] Solution found!
[t=16.3577s, 137640 KB] Actual search time: 10.8487s
pickup_item_from_location i4 l1 c1 r1 (1)
put_item_in_box i4 b3 l1 c1 r1 (1)
pickup_item_from_location i5 l1 c1 r1 (1)
put_item_in_box i5 b3 l1 c1 r1 (1)
pickup_item_from_location i6 l1 c1 r1 (1)
put_item_in_box i6 b3 l1 c1 r1 (1)
pickup_item_from_location i1 l1 c1 r1 (1)
put_item_in_box i1 b3 l1 c1 r1 (1)
pickup_item_from_location i2 l1 c1 r1 (1)
put_item_in_box i2 b3 l1 c1 r1 (1)
pickup_item_from_location i3 l1 c1 r1 (1)
put_item_in_box i3 b3 l1 c1 r1 (1)
pickup_box b3 r1 c1 l1 (1)
move_robot_with_box r1 l1 l2 c1 b3 (1)
pickdown_box b3 r1 c1 l2 (1)
pick_item_from_box i4 b3 l2 c1 r1 (1)
pickdown_food i4 l2 c1 r1 p1 (1)
pick_item_from_box i1 b3 l2 c1 r1 (1)
pickdown_food i1 l2 c1 r1 p2 (1)
pick_item_from_box i2 b3 l2 c1 r1 (1)
pickdown_medicine i2 l2 c1 r1 p1 (1)
pick_item_from_box i5 b3 l2 c1 r1 (1)
pickdown_medicine i5 l2 c1 r1 p2 (1)
pick_item_from_box i3 b3 l2 c1 r1 (1)
pickdown_tool i3 l2 c1 r1 p1 (1)
pick_item_from_box i6 b3 l2 c1 r1 (1)
pickdown_tool i6 l2 c1 r1 p2 (1)
[t=16.358s, 137640 KB] Plan length: 27 step(s).
[t=16.3581s, 137640 KB] Plan cost: 27
[t=16.3581s, 137640 KB] Expanded 1004791 state(s).
[t=16.3581s, 137640 KB] Reopened 39375 state(s).
[t=16.3582s, 137640 KB] Evaluated 1004840 state(s).
[t=16.3582s, 137640 KB] Evaluations: 1970257
[t=16.3583s, 137640 KB] Generated 3499058 state(s).
[t=16.3583s, 137640 KB] Dead ends: 48 state(s).
[t=16.3583s, 137640 KB] Number of registered states: 965465
[t=16.3584s, 137640 KB] Int hash set load factor: 965465/2097152 = 0.46037
[t=16.3584s, 137640 KB] Int hash set resizes: 21
[t=16.3585s, 137640 KB] Best solution cost so far: 27
[t=16.3585s, 137640 KB] Solution found - keep searching
[t=16.3835s, 137640 KB] Building successor generator...done!
[t=16.3836s, 137640 KB] peak memory difference for successor generator creation: 0 KB
[t=16.3837s, 137640 KB] time for successor generation creation: 2.417e-06s
[t=16.3837s, 137640 KB] Variables: 17
[t=16.3838s, 137640 KB] FactPairs: 67
[t=16.3838s, 137640 KB] Bytes per state: 8
[t=16.3839s, 137640 KB] Starting search: lazy_wastar(list(hff, hlm), preferred = list(hff, hlm), w = 1)
[t=16.3839s, 137640 KB] Conducting lazy best first search, (real) bound = 27
[t=16.384s, 137640 KB] 8 initial landmarks, 6 goal landmarks
[t=16.3841s, 137640 KB] New best heuristic value for ff: 10
[t=16.3841s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=16.3842s, 137640 KB] g=0, 1 evaluated, 0 expanded
[t=16.3843s, 137640 KB] Initial heuristic value for ff: 10
[t=16.3843s, 137640 KB] Initial heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 10
[t=16.3889s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 9
[t=16.389s, 137640 KB] g=5, 317 evaluated, 316 expanded
[t=16.3951s, 137640 KB] New best heuristic value for ff: 9
[t=16.3951s, 137640 KB] g=6, 791 evaluated, 790 expanded
[t=16.585s, 137640 KB] New best heuristic value for ff: 8
[t=16.5851s, 137640 KB] g=10, 16413 evaluated, 16412 expanded, 12 reopened
[t=16.5935s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 8
[t=16.5935s, 137640 KB] g=10, 17144 evaluated, 17143 expanded, 12 reopened
[t=16.6449s, 137640 KB] New best heuristic value for ff: 7
[t=16.6451s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 7
[t=16.6452s, 137640 KB] g=11, 21238 evaluated, 21237 expanded, 18 reopened
[t=17.462s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 6
[t=17.4621s, 137640 KB] g=14, 85427 evaluated, 85426 expanded, 936 reopened
[t=17.5051s, 137640 KB] New best heuristic value for ff: 6
[t=17.5052s, 137640 KB] g=14, 89787 evaluated, 89786 expanded, 1119 reopened
[t=18.1661s, 137640 KB] New best heuristic value for ff: 5
[t=18.1662s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 5
[t=18.1662s, 137640 KB] g=16, 148577 evaluated, 148576 expanded, 1119 reopened
[t=19.3247s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 4
[t=19.3248s, 137640 KB] g=18, 266936 evaluated, 266914 expanded, 2425 reopened
[t=21.5486s, 137640 KB] New best heuristic value for ff: 4
[t=21.5487s, 137640 KB] g=19, 440042 evaluated, 439996 expanded, 2517 reopened
[t=24.0199s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 3
[t=24.02s, 137640 KB] g=21, 690188 evaluated, 689761 expanded, 3847 reopened
[t=24.4275s, 137640 KB] New best heuristic value for ff: 3
[t=24.4275s, 137640 KB] g=21, 727929 evaluated, 727502 expanded, 5245 reopened
[t=24.5471s, 137640 KB] New best heuristic value for ff: 2
[t=24.5472s, 137640 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 2
[t=24.5472s, 137640 KB] g=22, 741597 evaluated, 741143 expanded, 5440 reopened
[t=41.5659s, 230828 KB] New best heuristic value for ff: 1
[t=41.566s, 230828 KB] New best heuristic value for lmcount(lm_rhw(reasonable_orders = true), pref = false): 1
[t=41.566s, 230828 KB] g=26, 2153203 evaluated, 2145672 expanded, 20328 reopened
[t=110.821s, 595232 KB] Completely explored state space -- no solution!
[t=110.822s, 595232 KB] Actual search time: 94.4378s
[t=110.822s, 595232 KB] Expanded 7729010 state(s).
[t=110.822s, 595232 KB] Reopened 467290 state(s).
[t=110.822s, 595232 KB] Evaluated 7952906 state(s).
[t=110.822s, 595232 KB] Evaluations: 15214626
[t=110.822s, 595232 KB] Generated 25143353 state(s).
[t=110.822s, 595232 KB] Dead ends: 223896 state(s).
[t=110.822s, 595232 KB] Number of registered states: 7485616
[t=110.822s, 595232 KB] Int hash set load factor: 7485616/16777216 = 0.446177
[t=110.822s, 595232 KB] Int hash set resizes: 24
[t=110.822s, 595232 KB] Best solution cost so far: 27
[t=110.822s, 595232 KB] No solution found - keep searching
[t=110.85s, 595232 KB] Actual search time: 110.843s
[t=110.85s, 595232 KB] Cumulative statistics:
[t=110.85s, 595232 KB] Expanded 9358885 state(s).
[t=110.85s, 595232 KB] Reopened 554540 state(s).
[t=110.85s, 595232 KB] Evaluated 9583056 state(s).
[t=110.85s, 595232 KB] Evaluations: 18387405
[t=110.85s, 595232 KB] Generated 30929663 state(s).
[t=110.85s, 595232 KB] Dead ends: 0 state(s).
[t=110.85s, 595232 KB] Search time: 110.843s
[t=110.85s, 595232 KB] Total time: 110.85s
Solution found.
Peak memory: 595232 KB
Remove intermediate file output.sas
search exit code: 0