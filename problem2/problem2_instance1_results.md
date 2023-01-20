#Results problem 1 instance 1
commands given from problem2 folder
It is required the installation of ENHSP planner


#sat-hadd

java -jar ../ENHSP-Public-enhsp-20/enhsp-dist/enhsp.jar -o domain2.pddl -f problem2_instance1.pddl -planner sat-hadd


Domain parsed
Problem parsed
Grounding..
Grounding Time: 116
Aibr Preprocessing
|F|:50
|X|:5
|A|:174
|P|:0
|E|:0
H1 Setup Time (msec): 21
Setting horizon to:NaN
Running Greedy Best First Search
h(n = s_0)=9.0
 g(n)= 5.0 h(n)=8.0
 g(n)= 6.0 h(n)=7.0
 g(n)= 7.0 h(n)=6.0
 g(n)= 12.0 h(n)=5.0
 g(n)= 13.0 h(n)=4.0
 g(n)= 14.0 h(n)=3.0
 g(n)= 20.0 h(n)=2.0
 g(n)= 21.0 h(n)=1.0
 g(n)= 22.0 h(n)=0.0
Problem Solved

Found Plan:
0.0: (pickup_item_from_location i2 l1 c1 r1)
1.0: (put_item_in_box i2 b1 l1 c1 r1)
2.0: (load_box b1 r1 c1 l1 a1)
3.0: (move_robot r1 l1 l2 c1)
4.0: (unload_box b1 r1 c1 l2 a1)
5.0: (pick_item_from_box i2 b1 l2 c1 r1)
6.0: (pickdown_medicine i2 l2 c1 r1 p1)
7.0: (pickup_item_from_location i3 l1 c2 r2)
8.0: (put_item_in_box i3 b2 l1 c2 r2)
9.0: (load_box b2 r2 c2 l1 a2)
10.0: (move_robot r2 l1 l3 c2)
11.0: (unload_box b2 r2 c2 l3 a2)
12.0: (pick_item_from_box i3 b2 l3 c2 r2)
13.0: (pickdown_tool i3 l3 c2 r2 p2)
14.0: (move_robot r2 l3 l1 c2)
15.0: (pickup_item_from_location i1 l1 c2 r2)
16.0: (put_item_in_box i1 b3 l1 c2 r2)
17.0: (load_box b3 r2 c2 l1 a2)
18.0: (move_robot r2 l1 l2 c2)
19.0: (unload_box b3 r2 c2 l2 a2)
20.0: (pick_item_from_box i1 b3 l2 c2 r2)
21.0: (pickdown_food i1 l2 c2 r2 p1)

Plan-Length:22
Metric (Search):22.0
Planning Time (msec): 3229
Heuristic Time (msec): 1233
Search Time (msec): 1468
Expanded Nodes:9565
States Evaluated:22315
Fixed constraint violations during search (zero-crossing):0
Number of Dead-Ends detected:540
Number of Duplicates detected:46047


#opt-blind

java -jar ../ENHSP-Public-enhsp-20/enhsp-dist/enhsp.jar -o domain2.pddl -f problem2_instance1.pddl -planner opt-blind


Domain parsed
Problem parsed
Grounding..
Grounding Time: 37
|F|:53
|X|:5
|A|:192
|P|:0
|E|:0
Setting horizon to:NaN
Running WA-STAR
h(n = s_0)=0.0
f(n) = 1.0 (Expanded Nodes: 1, Evaluated States: 16, Time: 0.008) Frontier Size: 15
f(n) = 2.0 (Expanded Nodes: 17, Evaluated States: 116, Time: 0.042) Frontier Size: 99
f(n) = 3.0 (Expanded Nodes: 117, Evaluated States: 479, Time: 0.061) Frontier Size: 362
f(n) = 4.0 (Expanded Nodes: 480, Evaluated States: 1472, Time: 0.092) Frontier Size: 992
f(n) = 5.0 (Expanded Nodes: 1473, Evaluated States: 3623, Time: 0.148) Frontier Size: 2150
f(n) = 6.0 (Expanded Nodes: 3624, Evaluated States: 7379, Time: 0.227) Frontier Size: 3755
f(n) = 7.0 (Expanded Nodes: 7380, Evaluated States: 13295, Time: 0.306) Frontier Size: 5915
f(n) = 8.0 (Expanded Nodes: 13296, Evaluated States: 21883, Time: 0.4) Frontier Size: 8587
f(n) = 9.0 (Expanded Nodes: 21884, Evaluated States: 33339, Time: 0.521) Frontier Size: 11455
f(n) = 10.0 (Expanded Nodes: 33340, Evaluated States: 47921, Time: 0.643) Frontier Size: 14581
f(n) = 11.0 (Expanded Nodes: 47922, Evaluated States: 64607, Time: 0.805) Frontier Size: 16685
f(n) = 12.0 (Expanded Nodes: 64608, Evaluated States: 82805, Time: 0.988) Frontier Size: 18197
f(n) = 13.0 (Expanded Nodes: 82806, Evaluated States: 102374, Time: 1.203) Frontier Size: 19568
f(n) = 14.0 (Expanded Nodes: 102375, Evaluated States: 122366, Time: 1.397) Frontier Size: 19991
f(n) = 15.0 (Expanded Nodes: 122367, Evaluated States: 142745, Time: 1.609) Frontier Size: 20378
f(n) = 16.0 (Expanded Nodes: 142746, Evaluated States: 161868, Time: 1.807) Frontier Size: 19122
f(n) = 17.0 (Expanded Nodes: 161869, Evaluated States: 179287, Time: 2.004) Frontier Size: 17418
f(n) = 18.0 (Expanded Nodes: 179288, Evaluated States: 194813, Time: 2.205) Frontier Size: 15525
f(n) = 19.0 (Expanded Nodes: 194814, Evaluated States: 207863, Time: 2.469) Frontier Size: 13049
f(n) = 20.0 (Expanded Nodes: 207864, Evaluated States: 218526, Time: 2.603) Frontier Size: 10662
Problem Solved

Found Plan:
0.0: (pickup_item_from_location i3 l1 c1 r1)
1.0: (pickup_item_from_location i1 l1 c2 r2)
2.0: (put_item_in_box i1 b3 l1 c2 r2)
3.0: (load_box b3 r2 c2 l1 a2)
4.0: (put_item_in_box i3 b2 l1 c1 r1)
5.0: (load_box b2 r1 c1 l1 a1)
6.0: (move_robot r1 l1 l3 c1)
7.0: (unload_box b2 r1 c1 l3 a1)
8.0: (pickup_item_from_location i2 l1 c2 r2)
9.0: (put_item_in_box i2 b1 l1 c2 r2)
10.0: (load_box b1 r2 c2 l1 a2)
11.0: (pick_item_from_box i3 b2 l3 c1 r1)
12.0: (pickdown_tool i3 l3 c1 r1 p2)
13.0: (move_robot r2 l1 l2 c2)
14.0: (unload_box b1 r2 c2 l2 a2)
15.0: (unload_box b3 r2 c2 l2 a2)
16.0: (pick_item_from_box i1 b3 l2 c2 r2)
17.0: (pickdown_food i1 l2 c2 r2 p1)
18.0: (pick_item_from_box i2 b1 l2 c2 r2)
19.0: (pickdown_medicine i2 l2 c2 r2 p1)

Plan-Length:20
Metric (Search):20.0
Planning Time (msec): 2820
Heuristic Time (msec): 8
Search Time (msec): 2607
Expanded Nodes:208215
States Evaluated:218982
Fixed constraint violations during search (zero-crossing):0
Number of Dead-Ends detected:0
Number of Duplicates detected:851200


#opt-hmax

java -jar ../ENHSP-Public-enhsp-20/enhsp-dist/enhsp.jar -o domain2.pddl -f problem2_instance1.pddl -planner opt-hmax


Domain parsed
Problem parsed
Grounding..
Grounding Time: 37
Aibr Preprocessing
|F|:50
|X|:5
|A|:174
|P|:0
|E|:0
H1 Setup Time (msec): 4
Setting horizon to:NaN
Running WA-STAR
h(n = s_0)=2.0
f(n) = 2.0 (Expanded Nodes: 0, Evaluated States: 0, Time: 0.011) Frontier Size: 0
f(n) = 3.0 (Expanded Nodes: 1, Evaluated States: 16, Time: 0.052) Frontier Size: 15
f(n) = 4.0 (Expanded Nodes: 11, Evaluated States: 101, Time: 0.098) Frontier Size: 90
f(n) = 5.0 (Expanded Nodes: 59, Evaluated States: 443, Time: 0.193) Frontier Size: 384
f(n) = 6.0 (Expanded Nodes: 240, Evaluated States: 1274, Time: 0.278) Frontier Size: 1034
f(n) = 7.0 (Expanded Nodes: 735, Evaluated States: 2921, Time: 0.405) Frontier Size: 2186
f(n) = 8.0 (Expanded Nodes: 1827, Evaluated States: 5921, Time: 0.601) Frontier Size: 4094
f(n) = 9.0 (Expanded Nodes: 3936, Evaluated States: 10607, Time: 0.916) Frontier Size: 6527
f(n) = 10.0 (Expanded Nodes: 7194, Evaluated States: 17363, Time: 1.304) Frontier Size: 10025
f(n) = 11.0 (Expanded Nodes: 12675, Evaluated States: 26428, Time: 1.83) Frontier Size: 13543
f(n) = 12.0 (Expanded Nodes: 20316, Evaluated States: 38445, Time: 2.459) Frontier Size: 17397
f(n) = 13.0 (Expanded Nodes: 30064, Evaluated States: 53417, Time: 3.288) Frontier Size: 22376
f(n) = 14.0 (Expanded Nodes: 42876, Evaluated States: 71515, Time: 4.599) Frontier Size: 26812
f(n) = 15.0 (Expanded Nodes: 56832, Evaluated States: 89165, Time: 6.417) Frontier Size: 29567
f(n) = 16.0 (Expanded Nodes: 72591, Evaluated States: 108227, Time: 7.503) Frontier Size: 31851
f(n) = 17.0 (Expanded Nodes: 89496, Evaluated States: 126759, Time: 8.524) Frontier Size: 32634
f(n) = 18.0 (Expanded Nodes: 107712, Evaluated States: 146926, Time: 9.656) Frontier Size: 33523
-------------Time: 10s ; Expanded Nodes: 111043 (Avg-Speed 11104.0 n/s); Evaluated States: 154370
f(n) = 19.0 (Expanded Nodes: 126298, Evaluated States: 165489, Time: 10.687) Frontier Size: 32347
f(n) = 20.0 (Expanded Nodes: 146370, Evaluated States: 184753, Time: 12.329) Frontier Size: 29939
Problem Solved

Found Plan:
0.0: (pickup_item_from_location i1 l1 c1 r1)
1.0: (put_item_in_box i1 b1 l1 c1 r1)
2.0: (pickup_item_from_location i2 l1 c1 r1)
3.0: (put_item_in_box i2 b2 l1 c1 r1)
4.0: (pickup_item_from_location i3 l1 c1 r1)
5.0: (load_box b2 r2 c2 l1 a2)
6.0: (load_box b1 r2 c2 l1 a2)
7.0: (move_robot r2 l1 l2 c2)
8.0: (unload_box b1 r2 c2 l2 a2)
9.0: (put_item_in_box i3 b3 l1 c1 r1)
10.0: (unload_box b2 r2 c2 l2 a2)
11.0: (load_box b3 r1 c1 l1 a1)
12.0: (move_robot r1 l1 l3 c1)
13.0: (pick_item_from_box i1 b1 l2 c2 r2)
14.0: (pickdown_food i1 l2 c2 r2 p1)
15.0: (unload_box b3 r1 c1 l3 a1)
16.0: (pick_item_from_box i2 b2 l2 c2 r2)
17.0: (pick_item_from_box i3 b3 l3 c1 r1)
18.0: (pickdown_medicine i2 l2 c2 r2 p1)
19.0: (pickdown_tool i3 l3 c1 r1 p2)

Plan-Length:20
Metric (Search):20.0
Planning Time (msec): 12602
Heuristic Time (msec): 10358
Search Time (msec): 12329
Expanded Nodes:146372
States Evaluated:184758
Fixed constraint violations during search (zero-crossing):0
Number of Dead-Ends detected:4182
Number of Duplicates detected:639596