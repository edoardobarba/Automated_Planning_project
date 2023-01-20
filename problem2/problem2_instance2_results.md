#Results problem 1 instance 1
commands given from problem2 folder
It is required the installation of ENHSP planner


#sat-hadd

java -jar ../ENHSP-Public-enhsp-20/enhsp-dist/enhsp.jar -o domain2.pddl -f problem2_instance2.pddl -planner sat-hadd


Domain parsed
Problem parsed
Grounding..
Grounding Time: 46
Aibr Preprocessing
|F|:59
|X|:5
|A|:222
|P|:0
|E|:0
H1 Setup Time (msec): 5
Setting horizon to:NaN
Running Greedy Best First Search
h(n = s_0)=12.0
 g(n)= 5.0 h(n)=11.0
 g(n)= 6.0 h(n)=10.0
 g(n)= 7.0 h(n)=9.0
 g(n)= 13.0 h(n)=7.0
 g(n)= 14.0 h(n)=5.0
 g(n)= 19.0 h(n)=4.0
 g(n)= 20.0 h(n)=3.0
 g(n)= 21.0 h(n)=2.0
 g(n)= 31.0 h(n)=1.0
 g(n)= 32.0 h(n)=0.0
Problem Solved

Found Plan:
0.0: (pickup_item_from_location i5 l1 c2 r2)
1.0: (put_item_in_box i5 b3 l1 c2 r2)
2.0: (load_box b3 r1 c1 l1 a1)
3.0: (move_robot r1 l1 l2 c1)
4.0: (unload_box b3 r1 c1 l2 a1)
5.0: (pick_item_from_box i5 b3 l2 c1 r1)
6.0: (pickdown_medicine i5 l2 c1 r1 p1)
7.0: (move_robot r1 l2 l1 c1)
8.0: (pickup_item_from_location i4 l1 c1 r1)
9.0: (put_item_in_box i4 b2 l1 c1 r1)
10.0: (load_box b2 r1 c1 l1 a1)
11.0: (move_robot r1 l1 l2 c1)
12.0: (unload_box b2 r1 c1 l2 a1)
13.0: (pick_item_from_box i4 b2 l2 c1 r1)
14.0: (pickup_item_from_location i2 l1 c2 r2)
15.0: (put_item_in_box i2 b1 l1 c2 r2)
16.0: (load_box b1 r2 c2 l1 a2)
17.0: (move_robot r2 l1 l3 c2)
18.0: (unload_box b1 r2 c2 l3 a2)
19.0: (pick_item_from_box i2 b1 l3 c2 r2)
20.0: (pickdown_medicine i2 l3 c2 r2 p2)
21.0: (load_box b1 r2 c2 l3 a2)
22.0: (move_robot r2 l3 l1 c2)
23.0: (unload_box b1 r2 c2 l1 a2)
24.0: (pickup_item_from_location i1 l1 c2 r2)
25.0: (put_item_in_box i1 b1 l1 c2 r2)
26.0: (load_box b1 r2 c2 l1 a2)
27.0: (move_robot r2 l1 l2 c2)
28.0: (unload_box b1 r2 c2 l2 a2)
29.0: (pickdown_food i4 l2 c1 r1 p3)
30.0: (pick_item_from_box i1 b1 l2 c1 r1)
31.0: (pickdown_food i1 l2 c1 r1 p1)

Plan-Length:32
Metric (Search):32.0
Planning Time (msec): 964
Heuristic Time (msec): 559
Search Time (msec): 653
Expanded Nodes:1412
States Evaluated:5800
Fixed constraint violations during search (zero-crossing):0
Number of Dead-Ends detected:37
Number of Duplicates detected:5634


#opt-blind


java -jar ../ENHSP-Public-enhsp-20/enhsp-dist/enhsp.jar -o domain2.pddl -f problem2_instance2.pddl -planner opt-blind


Domain parsed
Problem parsed
Grounding..
Grounding Time: 41
|F|:61
|X|:5
|A|:246
|P|:0
|E|:0
Setting horizon to:NaN
Running WA-STAR
h(n = s_0)=0.0
f(n) = 1.0 (Expanded Nodes: 1, Evaluated States: 18, Time: 0.006) Frontier Size: 17
f(n) = 2.0 (Expanded Nodes: 19, Evaluated States: 143, Time: 0.036) Frontier Size: 124
f(n) = 3.0 (Expanded Nodes: 144, Evaluated States: 650, Time: 0.056) Frontier Size: 506
f(n) = 4.0 (Expanded Nodes: 651, Evaluated States: 2222, Time: 0.096) Frontier Size: 1571
f(n) = 5.0 (Expanded Nodes: 2223, Evaluated States: 6056, Time: 0.172) Frontier Size: 3833
f(n) = 6.0 (Expanded Nodes: 6057, Evaluated States: 13406, Time: 0.269) Frontier Size: 7349
f(n) = 7.0 (Expanded Nodes: 13407, Evaluated States: 25964, Time: 0.387) Frontier Size: 12557
f(n) = 8.0 (Expanded Nodes: 25965, Evaluated States: 45208, Time: 0.518) Frontier Size: 19243
f(n) = 9.0 (Expanded Nodes: 45209, Evaluated States: 73062, Time: 0.725) Frontier Size: 27853
f(n) = 10.0 (Expanded Nodes: 73063, Evaluated States: 112722, Time: 1.027) Frontier Size: 39659
f(n) = 11.0 (Expanded Nodes: 112723, Evaluated States: 165082, Time: 1.45) Frontier Size: 52359
f(n) = 12.0 (Expanded Nodes: 165083, Evaluated States: 231970, Time: 2.084) Frontier Size: 66887
f(n) = 13.0 (Expanded Nodes: 231971, Evaluated States: 313749, Time: 2.762) Frontier Size: 81778
f(n) = 14.0 (Expanded Nodes: 313750, Evaluated States: 409640, Time: 3.817) Frontier Size: 95890
f(n) = 15.0 (Expanded Nodes: 409641, Evaluated States: 519605, Time: 4.84) Frontier Size: 109964
f(n) = 16.0 (Expanded Nodes: 519606, Evaluated States: 640629, Time: 6.037) Frontier Size: 121023
f(n) = 17.0 (Expanded Nodes: 640630, Evaluated States: 771740, Time: 7.502) Frontier Size: 131110
f(n) = 18.0 (Expanded Nodes: 771741, Evaluated States: 906773, Time: 9.292) Frontier Size: 135032
-------------Time: 10s ; Expanded Nodes: 832621 (Avg-Speed 83262.0 n/s); Evaluated States: 985796
f(n) = 19.0 (Expanded Nodes: 906774, Evaluated States: 1042418, Time: 10.94) Frontier Size: 135644
f(n) = 20.0 (Expanded Nodes: 1042419, Evaluated States: 1173940, Time: 12.57) Frontier Size: 131521
f(n) = 21.0 (Expanded Nodes: 1173941, Evaluated States: 1302264, Time: 14.246) Frontier Size: 128323
f(n) = 22.0 (Expanded Nodes: 1302265, Evaluated States: 1424298, Time: 15.838) Frontier Size: 122033
f(n) = 23.0 (Expanded Nodes: 1424299, Evaluated States: 1538576, Time: 17.379) Frontier Size: 114277
f(n) = 24.0 (Expanded Nodes: 1538577, Evaluated States: 1641632, Time: 19.382) Frontier Size: 103055
-------------Time: 20s ; Expanded Nodes: 1595804 (Avg-Speed 79790.0 n/s); Evaluated States: 1703057
f(n) = 25.0 (Expanded Nodes: 1641633, Evaluated States: 1737032, Time: 20.512) Frontier Size: 95399
f(n) = 26.0 (Expanded Nodes: 1737033, Evaluated States: 1823144, Time: 21.646) Frontier Size: 86111
f(n) = 27.0 (Expanded Nodes: 1823145, Evaluated States: 1903676, Time: 22.618) Frontier Size: 80531
f(n) = 28.0 (Expanded Nodes: 1903677, Evaluated States: 1971224, Time: 23.576) Frontier Size: 67547
f(n) = 29.0 (Expanded Nodes: 1971225, Evaluated States: 2021878, Time: 24.411) Frontier Size: 50653
f(n) = 30.0 (Expanded Nodes: 2021879, Evaluated States: 2058012, Time: 25.005) Frontier Size: 36133
Problem Solved

Found Plan:
0.0: (pickup_item_from_location i1 l1 c2 r2)
1.0: (pickup_item_from_location i5 l1 c1 r1)
2.0: (put_item_in_box i5 b2 l1 c1 r1)
3.0: (load_box b2 r1 c1 l1 a1)
4.0: (pickup_item_from_location i2 l1 c1 r1)
5.0: (put_item_in_box i1 b1 l1 c2 r2)
6.0: (pickup_item_from_location i4 l1 c2 r2)
7.0: (put_item_in_box i4 b3 l1 c2 r2)
8.0: (load_box b3 r2 c2 l1 a2)
9.0: (load_box b1 r2 c2 l1 a2)
10.0: (move_robot r2 l1 l2 c2)
11.0: (unload_box b1 r2 c2 l2 a2)
12.0: (unload_box b3 r2 c2 l2 a2)
13.0: (pick_item_from_box i1 b1 l2 c2 r2)
14.0: (pickdown_food i1 l2 c2 r2 p3)
15.0: (pick_item_from_box i4 b3 l2 c2 r2)
16.0: (pickdown_food i4 l2 c2 r2 p1)
17.0: (load_box b3 r2 c2 l2 a2)
18.0: (move_robot r2 l2 l1 c2)
19.0: (unload_box b3 r2 c2 l1 a2)
20.0: (put_item_in_box i2 b3 l1 c1 r1)
21.0: (load_box b3 r2 c2 l1 a2)
22.0: (move_robot r2 l1 l3 c2)
23.0: (unload_box b3 r2 c2 l3 a2)
24.0: (pick_item_from_box i2 b3 l3 c2 r2)
25.0: (pickdown_medicine i2 l3 c2 r2 p2)
26.0: (move_robot r1 l1 l2 c1)
27.0: (unload_box b2 r1 c1 l2 a1)
28.0: (pick_item_from_box i5 b2 l2 c1 r1)
29.0: (pickdown_medicine i5 l2 c1 r1 p1)

Plan-Length:30
Metric (Search):30.0
Planning Time (msec): 25242
Heuristic Time (msec): 46
Search Time (msec): 25006
Expanded Nodes:2021919
States Evaluated:2058084
Fixed constraint violations during search (zero-crossing):0
Number of Dead-Ends detected:0
Number of Duplicates detected:8111391


#opt-hmax

java -jar ../ENHSP-Public-enhsp-20/enhsp-dist/enhsp.jar -o domain2.pddl -f problem2_instance2.pddl -planner opt-hmax


Domain parsed
Problem parsed
Grounding..
Grounding Time: 48
Aibr Preprocessing
|F|:59
|X|:5
|A|:222
|P|:0
|E|:0
H1 Setup Time (msec): 6
Setting horizon to:NaN
Running WA-STAR
h(n = s_0)=2.0
f(n) = 2.0 (Expanded Nodes: 0, Evaluated States: 0, Time: 0.018) Frontier Size: 0
f(n) = 3.0 (Expanded Nodes: 1, Evaluated States: 18, Time: 0.063) Frontier Size: 17
f(n) = 4.0 (Expanded Nodes: 19, Evaluated States: 143, Time: 0.143) Frontier Size: 124
f(n) = 5.0 (Expanded Nodes: 112, Evaluated States: 650, Time: 0.214) Frontier Size: 538
f(n) = 6.0 (Expanded Nodes: 459, Evaluated States: 2222, Time: 0.344) Frontier Size: 1763
f(n) = 7.0 (Expanded Nodes: 1557, Evaluated States: 6092, Time: 0.616) Frontier Size: 4463
f(n) = 8.0 (Expanded Nodes: 3975, Evaluated States: 13646, Time: 1.071) Frontier Size: 9167
f(n) = 9.0 (Expanded Nodes: 9135, Evaluated States: 26378, Time: 1.799) Frontier Size: 16163
f(n) = 10.0 (Expanded Nodes: 17511, Evaluated States: 45104, Time: 2.793) Frontier Size: 25433
f(n) = 11.0 (Expanded Nodes: 31689, Evaluated States: 73808, Time: 4.734) Frontier Size: 38147
f(n) = 12.0 (Expanded Nodes: 51795, Evaluated States: 111422, Time: 7.546) Frontier Size: 52799
-------------Time: 10s ; Expanded Nodes: 65634 (Avg-Speed 6563.0 n/s); Evaluated States: 156869
f(n) = 13.0 (Expanded Nodes: 81181, Evaluated States: 162190, Time: 10.852) Frontier Size: 70317
f(n) = 14.0 (Expanded Nodes: 119505, Evaluated States: 226024, Time: 14.851) Frontier Size: 91785
-------------Time: 20s ; Expanded Nodes: 166430 (Avg-Speed 8321.0 n/s); Evaluated States: 303362
f(n) = 15.0 (Expanded Nodes: 170091, Evaluated States: 303926, Time: 20.064) Frontier Size: 113635
f(n) = 16.0 (Expanded Nodes: 233688, Evaluated States: 397886, Time: 26.386) Frontier Size: 136988
-------------Time: 30s ; Expanded Nodes: 245251 (Avg-Speed 8175.0 n/s); Evaluated States: 442751
f(n) = 17.0 (Expanded Nodes: 308677, Evaluated States: 504419, Time: 34.755) Frontier Size: 160875
-------------Time: 40s ; Expanded Nodes: 336821 (Avg-Speed 8420.0 n/s); Evaluated States: 584079
f(n) = 18.0 (Expanded Nodes: 397211, Evaluated States: 622633, Time: 42.445) Frontier Size: 182518
-------------Time: 50s ; Expanded Nodes: 438076 (Avg-Speed 8761.0 n/s); Evaluated States: 715198
f(n) = 19.0 (Expanded Nodes: 497571, Evaluated States: 752124, Time: 52.398) Frontier Size: 200590
-------------Time: 60s ; Expanded Nodes: 539082 (Avg-Speed 8984.0 n/s); Evaluated States: 848155
f(n) = 20.0 (Expanded Nodes: 609035, Evaluated States: 889057, Time: 64.247) Frontier Size: 216231
-------------Time: 70s ; Expanded Nodes: 642449 (Avg-Speed 9177.0 n/s); Evaluated States: 970822
f(n) = 21.0 (Expanded Nodes: 729433, Evaluated States: 1031085, Time: 74.914) Frontier Size: 224794
-------------Time: 80s ; Expanded Nodes: 760072 (Avg-Speed 9500.0 n/s); Evaluated States: 1107679
f(n) = 22.0 (Expanded Nodes: 855341, Evaluated States: 1169829, Time: 85.809) Frontier Size: 225655
-------------Time: 90s ; Expanded Nodes: 881963 (Avg-Speed 9799.0 n/s); Evaluated States: 1233610
f(n) = 23.0 (Expanded Nodes: 981649, Evaluated States: 1300463, Time: 95.131) Frontier Size: 219833
-------------Time: 100s ; Expanded Nodes: 1016580 (Avg-Speed 10165.0 n/s); Evaluated States: 1369805
f(n) = 24.0 (Expanded Nodes: 1107663, Evaluated States: 1425428, Time: 104.255) Frontier Size: 207553
-------------Time: 110s ; Expanded Nodes: 1161410 (Avg-Speed 10558.0 n/s); Evaluated States: 1510573
f(n) = 25.0 (Expanded Nodes: 1229227, Evaluated States: 1546864, Time: 113.647) Frontier Size: 198972
-------------Time: 120s ; Expanded Nodes: 1295694 (Avg-Speed 10797.0 n/s); Evaluated States: 1636460
f(n) = 26.0 (Expanded Nodes: 1346882, Evaluated States: 1660688, Time: 122.656) Frontier Size: 186531
-------------Time: 130s ; Expanded Nodes: 1434834 (Avg-Speed 11037.0 n/s); Evaluated States: 1754673
f(n) = 27.0 (Expanded Nodes: 1462521, Evaluated States: 1766496, Time: 131.645) Frontier Size: 169209
f(n) = 28.0 (Expanded Nodes: 1567989, Evaluated States: 1859849, Time: 138.471) Frontier Size: 150272
-------------Time: 140s ; Expanded Nodes: 1575529 (Avg-Speed 11253.0 n/s); Evaluated States: 1881762
f(n) = 29.0 (Expanded Nodes: 1669929, Evaluated States: 1954771, Time: 146.134) Frontier Size: 136000
-------------Time: 150s ; Expanded Nodes: 1714162 (Avg-Speed 11427.0 n/s); Evaluated States: 2009628
f(n) = 30.0 (Expanded Nodes: 1760177, Evaluated States: 2036609, Time: 152.509) Frontier Size: 121532
Problem Solved

Found Plan:
0.0: (pickup_item_from_location i5 l1 c2 r2)
1.0: (put_item_in_box i5 b2 l1 c2 r2)
2.0: (pickup_item_from_location i2 l1 c2 r2)
3.0: (put_item_in_box i2 b1 l1 c2 r2)
4.0: (pickup_item_from_location i4 l1 c1 r1)
5.0: (load_box b1 r2 c2 l1 a2)
6.0: (put_item_in_box i4 b3 l1 c1 r1)
7.0: (move_robot r2 l1 l2 c2)
8.0: (unload_box b1 r2 c2 l2 a2)
9.0: (load_box b2 r1 c1 l1 a1)
10.0: (move_robot r1 l1 l3 c1)
11.0: (pick_item_from_box i2 b1 l2 c2 r2)
12.0: (pickdown_medicine i2 l2 c2 r2 p1)
13.0: (load_box b1 r2 c2 l2 a2)
14.0: (move_robot r2 l2 l1 c2)
15.0: (unload_box b2 r1 c1 l3 a1)
16.0: (unload_box b1 r2 c2 l1 a2)
17.0: (pickup_item_from_location i1 l1 c2 r2)
18.0: (put_item_in_box i1 b1 l1 c2 r2)
19.0: (load_box b1 r2 c2 l1 a2)
20.0: (load_box b3 r2 c2 l1 a2)
21.0: (move_robot r2 l1 l2 c2)
22.0: (unload_box b1 r2 c2 l2 a2)
23.0: (unload_box b3 r2 c2 l2 a2)
24.0: (pick_item_from_box i4 b3 l2 c2 r2)
25.0: (pickdown_food i4 l2 c2 r2 p1)
26.0: (pick_item_from_box i1 b1 l2 c2 r2)
27.0: (pick_item_from_box i5 b2 l3 c1 r1)
28.0: (pickdown_food i1 l2 c2 r2 p3)
29.0: (pickdown_medicine i5 l3 c1 r1 p2)

Plan-Length:30
Metric (Search):30.0
Planning Time (msec): 152834
Heuristic Time (msec): 125715
Search Time (msec): 152510
Expanded Nodes:1760182
States Evaluated:2036622
Fixed constraint violations during search (zero-crossing):0
Number of Dead-Ends detected:67776
Number of Duplicates detected:7184089