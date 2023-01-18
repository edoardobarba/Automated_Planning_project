(define (problem problem4) 
(:domain domain4)
(:objects 
    r1 - robot
    r2 - robot
    c1 - crane
    c2 - crane
    a1 - carrier
    a2 - carrier
    p1 - person
    p2 - person
    i1 - item
    i3 - item
    b1 - box
    b2 - box
    b3 - box
    l1 - location 
    l2 - location 
    l3 - location   
)

(:init
    (= (box_count a1) 0)
    (= (box_count a2) 0)
    (= (max_capacity_carrier a1) 2)
    (= (max_capacity_carrier a2) 1)
    (= (item_count b1) 0)
    (= (item_count b2) 0)
    (= (item_count b3) 0)
    (= (max_capacity_box) 1) 
    (belongs_crane c1 r1)
    (belongs_crane c2 r2)
    (belongs_carrier a1 r1)
    (belongs_carrier a2 r2)
    (at_r r1 l1)
    (at_r r2 l1)
    (at_b b1 l1)
    (at_b b2 l1)
    (at_b b3 l1)
    (at_i i1 l1)
    (at_i i3 l1)
    (at_p p1 l2)
    (at_p p2 l3)
    (is_food i1)
    (is_tool i3)
    (need_food p1)
    (need_tool p2)
    (is_empty_c c1)
    (is_empty_c c2)
)

(:goal  (and
            (satisfied_p_for_food p1)
            (satisfied_p_for_tool p2)
        )

)
 (:metric minimize (total-time))
)
