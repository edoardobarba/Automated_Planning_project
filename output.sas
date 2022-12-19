begin_version
3
end_version
begin_metric
0
end_metric
16
begin_variable
var0
-1
3
Atom at_r(r1, l1)
Atom at_r(r1, l2)
Atom at_r(r1, l3)
end_variable
begin_variable
var1
-1
4
Atom at_b(b1, l1)
Atom at_b(b1, l2)
Atom at_b(b1, l3)
Atom on(b1, a1)
end_variable
begin_variable
var2
-1
4
Atom at_b(b2, l1)
Atom at_b(b2, l2)
Atom at_b(b2, l3)
Atom on(b2, a1)
end_variable
begin_variable
var3
-1
4
Atom at_i(i1, l1)
Atom inside(i1, b1)
Atom inside(i1, b2)
<none of those>
end_variable
begin_variable
var4
-1
4
Atom at_i(i2, l1)
Atom inside(i2, b1)
Atom inside(i2, b2)
<none of those>
end_variable
begin_variable
var5
-1
4
Atom at_i(i3, l1)
Atom inside(i3, b1)
Atom inside(i3, b2)
<none of those>
end_variable
begin_variable
var6
-1
4
Atom at_i(i4, l1)
Atom inside(i4, b1)
Atom inside(i4, b2)
<none of those>
end_variable
begin_variable
var7
-1
4
Atom at_i(i5, l1)
Atom inside(i5, b1)
Atom inside(i5, b2)
<none of those>
end_variable
begin_variable
var8
-1
4
Atom at_i(i6, l1)
Atom inside(i6, b1)
Atom inside(i6, b2)
<none of those>
end_variable
begin_variable
var9
-1
7
Atom holding_item(c1, i1)
Atom holding_item(c1, i2)
Atom holding_item(c1, i3)
Atom holding_item(c1, i4)
Atom holding_item(c1, i5)
Atom holding_item(c1, i6)
Atom is_empty_c(c1)
end_variable
begin_variable
var10
-1
2
Atom need_food(p1)
NegatedAtom need_food(p1)
end_variable
begin_variable
var11
-1
2
Atom need_food(p2)
NegatedAtom need_food(p2)
end_variable
begin_variable
var12
-1
2
Atom need_medicine(p1)
NegatedAtom need_medicine(p1)
end_variable
begin_variable
var13
-1
2
Atom need_medicine(p2)
NegatedAtom need_medicine(p2)
end_variable
begin_variable
var14
-1
2
Atom need_tool(p1)
NegatedAtom need_tool(p1)
end_variable
begin_variable
var15
-1
2
Atom need_tool(p2)
NegatedAtom need_tool(p2)
end_variable
6
begin_mutex_group
4
3 0
3 1
3 2
9 0
end_mutex_group
begin_mutex_group
4
4 0
4 1
4 2
9 1
end_mutex_group
begin_mutex_group
4
5 0
5 1
5 2
9 2
end_mutex_group
begin_mutex_group
4
6 0
6 1
6 2
9 3
end_mutex_group
begin_mutex_group
4
7 0
7 1
7 2
9 4
end_mutex_group
begin_mutex_group
4
8 0
8 1
8 2
9 5
end_mutex_group
begin_state
0
0
0
0
0
0
0
0
0
6
0
0
0
0
0
0
end_state
begin_goal
6
10 1
11 1
12 1
13 1
14 1
15 1
end_goal
108
begin_operator
load_box b1 r1 c1 l1 a1
2
0 0
9 6
1
0 1 0 3
1
end_operator
begin_operator
load_box b1 r1 c1 l2 a1
2
0 1
9 6
1
0 1 1 3
1
end_operator
begin_operator
load_box b1 r1 c1 l3 a1
2
0 2
9 6
1
0 1 2 3
1
end_operator
begin_operator
load_box b2 r1 c1 l1 a1
2
0 0
9 6
1
0 2 0 3
1
end_operator
begin_operator
load_box b2 r1 c1 l2 a1
2
0 1
9 6
1
0 2 1 3
1
end_operator
begin_operator
load_box b2 r1 c1 l3 a1
2
0 2
9 6
1
0 2 2 3
1
end_operator
begin_operator
move_robot r1 l1 l2 c1
1
9 6
1
0 0 0 1
1
end_operator
begin_operator
move_robot r1 l1 l3 c1
1
9 6
1
0 0 0 2
1
end_operator
begin_operator
move_robot r1 l2 l1 c1
1
9 6
1
0 0 1 0
1
end_operator
begin_operator
move_robot r1 l2 l3 c1
1
9 6
1
0 0 1 2
1
end_operator
begin_operator
move_robot r1 l3 l1 c1
1
9 6
1
0 0 2 0
1
end_operator
begin_operator
move_robot r1 l3 l2 c1
1
9 6
1
0 0 2 1
1
end_operator
begin_operator
pick_item_from_box i1 b1 l1 c1 r1
2
1 0
0 0
2
0 3 1 3
0 9 6 0
1
end_operator
begin_operator
pick_item_from_box i1 b1 l2 c1 r1
2
1 1
0 1
2
0 3 1 3
0 9 6 0
1
end_operator
begin_operator
pick_item_from_box i1 b1 l3 c1 r1
2
1 2
0 2
2
0 3 1 3
0 9 6 0
1
end_operator
begin_operator
pick_item_from_box i1 b2 l1 c1 r1
2
2 0
0 0
2
0 3 2 3
0 9 6 0
1
end_operator
begin_operator
pick_item_from_box i1 b2 l2 c1 r1
2
2 1
0 1
2
0 3 2 3
0 9 6 0
1
end_operator
begin_operator
pick_item_from_box i1 b2 l3 c1 r1
2
2 2
0 2
2
0 3 2 3
0 9 6 0
1
end_operator
begin_operator
pick_item_from_box i2 b1 l1 c1 r1
2
1 0
0 0
2
0 4 1 3
0 9 6 1
1
end_operator
begin_operator
pick_item_from_box i2 b1 l2 c1 r1
2
1 1
0 1
2
0 4 1 3
0 9 6 1
1
end_operator
begin_operator
pick_item_from_box i2 b1 l3 c1 r1
2
1 2
0 2
2
0 4 1 3
0 9 6 1
1
end_operator
begin_operator
pick_item_from_box i2 b2 l1 c1 r1
2
2 0
0 0
2
0 4 2 3
0 9 6 1
1
end_operator
begin_operator
pick_item_from_box i2 b2 l2 c1 r1
2
2 1
0 1
2
0 4 2 3
0 9 6 1
1
end_operator
begin_operator
pick_item_from_box i2 b2 l3 c1 r1
2
2 2
0 2
2
0 4 2 3
0 9 6 1
1
end_operator
begin_operator
pick_item_from_box i3 b1 l1 c1 r1
2
1 0
0 0
2
0 5 1 3
0 9 6 2
1
end_operator
begin_operator
pick_item_from_box i3 b1 l2 c1 r1
2
1 1
0 1
2
0 5 1 3
0 9 6 2
1
end_operator
begin_operator
pick_item_from_box i3 b1 l3 c1 r1
2
1 2
0 2
2
0 5 1 3
0 9 6 2
1
end_operator
begin_operator
pick_item_from_box i3 b2 l1 c1 r1
2
2 0
0 0
2
0 5 2 3
0 9 6 2
1
end_operator
begin_operator
pick_item_from_box i3 b2 l2 c1 r1
2
2 1
0 1
2
0 5 2 3
0 9 6 2
1
end_operator
begin_operator
pick_item_from_box i3 b2 l3 c1 r1
2
2 2
0 2
2
0 5 2 3
0 9 6 2
1
end_operator
begin_operator
pick_item_from_box i4 b1 l1 c1 r1
2
1 0
0 0
2
0 6 1 3
0 9 6 3
1
end_operator
begin_operator
pick_item_from_box i4 b1 l2 c1 r1
2
1 1
0 1
2
0 6 1 3
0 9 6 3
1
end_operator
begin_operator
pick_item_from_box i4 b1 l3 c1 r1
2
1 2
0 2
2
0 6 1 3
0 9 6 3
1
end_operator
begin_operator
pick_item_from_box i4 b2 l1 c1 r1
2
2 0
0 0
2
0 6 2 3
0 9 6 3
1
end_operator
begin_operator
pick_item_from_box i4 b2 l2 c1 r1
2
2 1
0 1
2
0 6 2 3
0 9 6 3
1
end_operator
begin_operator
pick_item_from_box i4 b2 l3 c1 r1
2
2 2
0 2
2
0 6 2 3
0 9 6 3
1
end_operator
begin_operator
pick_item_from_box i5 b1 l1 c1 r1
2
1 0
0 0
2
0 7 1 3
0 9 6 4
1
end_operator
begin_operator
pick_item_from_box i5 b1 l2 c1 r1
2
1 1
0 1
2
0 7 1 3
0 9 6 4
1
end_operator
begin_operator
pick_item_from_box i5 b1 l3 c1 r1
2
1 2
0 2
2
0 7 1 3
0 9 6 4
1
end_operator
begin_operator
pick_item_from_box i5 b2 l1 c1 r1
2
2 0
0 0
2
0 7 2 3
0 9 6 4
1
end_operator
begin_operator
pick_item_from_box i5 b2 l2 c1 r1
2
2 1
0 1
2
0 7 2 3
0 9 6 4
1
end_operator
begin_operator
pick_item_from_box i5 b2 l3 c1 r1
2
2 2
0 2
2
0 7 2 3
0 9 6 4
1
end_operator
begin_operator
pick_item_from_box i6 b1 l1 c1 r1
2
1 0
0 0
2
0 8 1 3
0 9 6 5
1
end_operator
begin_operator
pick_item_from_box i6 b1 l2 c1 r1
2
1 1
0 1
2
0 8 1 3
0 9 6 5
1
end_operator
begin_operator
pick_item_from_box i6 b1 l3 c1 r1
2
1 2
0 2
2
0 8 1 3
0 9 6 5
1
end_operator
begin_operator
pick_item_from_box i6 b2 l1 c1 r1
2
2 0
0 0
2
0 8 2 3
0 9 6 5
1
end_operator
begin_operator
pick_item_from_box i6 b2 l2 c1 r1
2
2 1
0 1
2
0 8 2 3
0 9 6 5
1
end_operator
begin_operator
pick_item_from_box i6 b2 l3 c1 r1
2
2 2
0 2
2
0 8 2 3
0 9 6 5
1
end_operator
begin_operator
pickdown_food i1 l2 c1 r1 p1
1
0 1
2
0 9 0 6
0 10 0 1
1
end_operator
begin_operator
pickdown_food i1 l2 c1 r1 p2
1
0 1
2
0 9 0 6
0 11 0 1
1
end_operator
begin_operator
pickdown_food i4 l2 c1 r1 p1
1
0 1
2
0 9 3 6
0 10 0 1
1
end_operator
begin_operator
pickdown_food i4 l2 c1 r1 p2
1
0 1
2
0 9 3 6
0 11 0 1
1
end_operator
begin_operator
pickdown_medicine i2 l2 c1 r1 p1
1
0 1
2
0 9 1 6
0 12 0 1
1
end_operator
begin_operator
pickdown_medicine i2 l2 c1 r1 p2
1
0 1
2
0 9 1 6
0 13 0 1
1
end_operator
begin_operator
pickdown_medicine i5 l2 c1 r1 p1
1
0 1
2
0 9 4 6
0 12 0 1
1
end_operator
begin_operator
pickdown_medicine i5 l2 c1 r1 p2
1
0 1
2
0 9 4 6
0 13 0 1
1
end_operator
begin_operator
pickdown_tool i3 l2 c1 r1 p1
1
0 1
2
0 9 2 6
0 14 0 1
1
end_operator
begin_operator
pickdown_tool i3 l2 c1 r1 p2
1
0 1
2
0 9 2 6
0 15 0 1
1
end_operator
begin_operator
pickdown_tool i6 l2 c1 r1 p1
1
0 1
2
0 9 5 6
0 14 0 1
1
end_operator
begin_operator
pickdown_tool i6 l2 c1 r1 p2
1
0 1
2
0 9 5 6
0 15 0 1
1
end_operator
begin_operator
pickup_item_from_location i1 l1 c1 r1
1
0 0
2
0 3 0 3
0 9 6 0
1
end_operator
begin_operator
pickup_item_from_location i2 l1 c1 r1
1
0 0
2
0 4 0 3
0 9 6 1
1
end_operator
begin_operator
pickup_item_from_location i3 l1 c1 r1
1
0 0
2
0 5 0 3
0 9 6 2
1
end_operator
begin_operator
pickup_item_from_location i4 l1 c1 r1
1
0 0
2
0 6 0 3
0 9 6 3
1
end_operator
begin_operator
pickup_item_from_location i5 l1 c1 r1
1
0 0
2
0 7 0 3
0 9 6 4
1
end_operator
begin_operator
pickup_item_from_location i6 l1 c1 r1
1
0 0
2
0 8 0 3
0 9 6 5
1
end_operator
begin_operator
put_item_in_box i1 b1 l1 c1 r1
2
1 0
0 0
2
0 3 -1 1
0 9 0 6
1
end_operator
begin_operator
put_item_in_box i1 b1 l2 c1 r1
2
1 1
0 1
2
0 3 -1 1
0 9 0 6
1
end_operator
begin_operator
put_item_in_box i1 b1 l3 c1 r1
2
1 2
0 2
2
0 3 -1 1
0 9 0 6
1
end_operator
begin_operator
put_item_in_box i1 b2 l1 c1 r1
2
2 0
0 0
2
0 3 -1 2
0 9 0 6
1
end_operator
begin_operator
put_item_in_box i1 b2 l2 c1 r1
2
2 1
0 1
2
0 3 -1 2
0 9 0 6
1
end_operator
begin_operator
put_item_in_box i1 b2 l3 c1 r1
2
2 2
0 2
2
0 3 -1 2
0 9 0 6
1
end_operator
begin_operator
put_item_in_box i2 b1 l1 c1 r1
2
1 0
0 0
2
0 4 -1 1
0 9 1 6
1
end_operator
begin_operator
put_item_in_box i2 b1 l2 c1 r1
2
1 1
0 1
2
0 4 -1 1
0 9 1 6
1
end_operator
begin_operator
put_item_in_box i2 b1 l3 c1 r1
2
1 2
0 2
2
0 4 -1 1
0 9 1 6
1
end_operator
begin_operator
put_item_in_box i2 b2 l1 c1 r1
2
2 0
0 0
2
0 4 -1 2
0 9 1 6
1
end_operator
begin_operator
put_item_in_box i2 b2 l2 c1 r1
2
2 1
0 1
2
0 4 -1 2
0 9 1 6
1
end_operator
begin_operator
put_item_in_box i2 b2 l3 c1 r1
2
2 2
0 2
2
0 4 -1 2
0 9 1 6
1
end_operator
begin_operator
put_item_in_box i3 b1 l1 c1 r1
2
1 0
0 0
2
0 5 -1 1
0 9 2 6
1
end_operator
begin_operator
put_item_in_box i3 b1 l2 c1 r1
2
1 1
0 1
2
0 5 -1 1
0 9 2 6
1
end_operator
begin_operator
put_item_in_box i3 b1 l3 c1 r1
2
1 2
0 2
2
0 5 -1 1
0 9 2 6
1
end_operator
begin_operator
put_item_in_box i3 b2 l1 c1 r1
2
2 0
0 0
2
0 5 -1 2
0 9 2 6
1
end_operator
begin_operator
put_item_in_box i3 b2 l2 c1 r1
2
2 1
0 1
2
0 5 -1 2
0 9 2 6
1
end_operator
begin_operator
put_item_in_box i3 b2 l3 c1 r1
2
2 2
0 2
2
0 5 -1 2
0 9 2 6
1
end_operator
begin_operator
put_item_in_box i4 b1 l1 c1 r1
2
1 0
0 0
2
0 6 -1 1
0 9 3 6
1
end_operator
begin_operator
put_item_in_box i4 b1 l2 c1 r1
2
1 1
0 1
2
0 6 -1 1
0 9 3 6
1
end_operator
begin_operator
put_item_in_box i4 b1 l3 c1 r1
2
1 2
0 2
2
0 6 -1 1
0 9 3 6
1
end_operator
begin_operator
put_item_in_box i4 b2 l1 c1 r1
2
2 0
0 0
2
0 6 -1 2
0 9 3 6
1
end_operator
begin_operator
put_item_in_box i4 b2 l2 c1 r1
2
2 1
0 1
2
0 6 -1 2
0 9 3 6
1
end_operator
begin_operator
put_item_in_box i4 b2 l3 c1 r1
2
2 2
0 2
2
0 6 -1 2
0 9 3 6
1
end_operator
begin_operator
put_item_in_box i5 b1 l1 c1 r1
2
1 0
0 0
2
0 7 -1 1
0 9 4 6
1
end_operator
begin_operator
put_item_in_box i5 b1 l2 c1 r1
2
1 1
0 1
2
0 7 -1 1
0 9 4 6
1
end_operator
begin_operator
put_item_in_box i5 b1 l3 c1 r1
2
1 2
0 2
2
0 7 -1 1
0 9 4 6
1
end_operator
begin_operator
put_item_in_box i5 b2 l1 c1 r1
2
2 0
0 0
2
0 7 -1 2
0 9 4 6
1
end_operator
begin_operator
put_item_in_box i5 b2 l2 c1 r1
2
2 1
0 1
2
0 7 -1 2
0 9 4 6
1
end_operator
begin_operator
put_item_in_box i5 b2 l3 c1 r1
2
2 2
0 2
2
0 7 -1 2
0 9 4 6
1
end_operator
begin_operator
put_item_in_box i6 b1 l1 c1 r1
2
1 0
0 0
2
0 8 -1 1
0 9 5 6
1
end_operator
begin_operator
put_item_in_box i6 b1 l2 c1 r1
2
1 1
0 1
2
0 8 -1 1
0 9 5 6
1
end_operator
begin_operator
put_item_in_box i6 b1 l3 c1 r1
2
1 2
0 2
2
0 8 -1 1
0 9 5 6
1
end_operator
begin_operator
put_item_in_box i6 b2 l1 c1 r1
2
2 0
0 0
2
0 8 -1 2
0 9 5 6
1
end_operator
begin_operator
put_item_in_box i6 b2 l2 c1 r1
2
2 1
0 1
2
0 8 -1 2
0 9 5 6
1
end_operator
begin_operator
put_item_in_box i6 b2 l3 c1 r1
2
2 2
0 2
2
0 8 -1 2
0 9 5 6
1
end_operator
begin_operator
unload_box b1 r1 c1 l1 a1
2
0 0
9 6
1
0 1 3 0
1
end_operator
begin_operator
unload_box b1 r1 c1 l2 a1
2
0 1
9 6
1
0 1 3 1
1
end_operator
begin_operator
unload_box b1 r1 c1 l3 a1
2
0 2
9 6
1
0 1 3 2
1
end_operator
begin_operator
unload_box b2 r1 c1 l1 a1
2
0 0
9 6
1
0 2 3 0
1
end_operator
begin_operator
unload_box b2 r1 c1 l2 a1
2
0 1
9 6
1
0 2 3 1
1
end_operator
begin_operator
unload_box b2 r1 c1 l3 a1
2
0 2
9 6
1
0 2 3 2
1
end_operator
0
