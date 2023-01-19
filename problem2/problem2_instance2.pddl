(define (problem problem2_example) (:domain domain2)
(:objects 
    r1 - robot
    r2 - robot
    ; r3 - robot
    c1 - crane
    c2 - crane
    ; c3 - crane
    a1 - carrier
    a2 - carrier
    ; a3 - carrier
    p1 - person
    p2 - person
    p3 - person
    i1 - item
    i2 - item
    ; i3 - item
    i4 - item
    i5 - item
    ; i6 - item
    ; i7 - item
    ; i8 - item
    ; i9 - item
    ; i10 - item
    b1 - box
    b2 - box
    b3 - box
    ; b4 - box
    ; b5 - box
    ; b6 - box
    l1 - location 
    l2 - location 
    l3 - location   
    ; l4 - location
    ; l5 - location
    ; l6 - location
)

(:init
    (= (box_count a1) 0)
    (= (box_count a2) 0) 
    ; (= (box_count a3) 0)
    (= (max_capacity_carrier a1) 1)
    (= (max_capacity_carrier a2) 2)
    ; (= (max_capacity_carrier a3) 1)
    (= (item_count b1) 0)
    (= (item_count b2) 0)
    (= (item_count b3) 0)
    ; (= (item_count b4) 0)
    ; (= (item_count b5) 0)
    ; (= (item_count b6) 0)
    (= (max_capacity_box) 1) 
    (belongs_crane c1 r1)
    (belongs_crane c2 r2)
    ; (belongs_crane c3 r3)
    (belongs_carrier a1 r1)
    (belongs_carrier a2 r2)
    ; (belongs_carrier a3 r3)
    (at_r r1 l1)
    (at_r r2 l1)
    ; (at_r r3 l1)
    (at_b b1 l1)
    (at_b b2 l1)
    (at_b b3 l1)
    ; (at_b b4 l1)
    ; (at_b b5 l1)
    ; (at_b b6 l1)
    (at_i i1 l1)
    (at_i i2 l1)
    ; (at_i i3 l1)
    (at_i i4 l1)
    (at_i i5 l1)
    ; (at_i i6 l1)
    ; (at_i i7 l1)
    ; (at_i i8 l1)
    ; (at_i i9 l1)
    ; (at_i i10 l1)
    (at_p p1 l2)
    (at_p p2 l3)
    (at_p p3 l2)
    (is_food i1)
    (is_medicine i2)
    ; (is_tool i3)
    (is_food i4)
    (is_medicine i5)
    ; (is_tool i6)
    ; (is_food i7)
    ; (is_medicine i8)
    ; (is_tool i9)
    ; (is_food i10)
    (need_food p1)
    (need_medicine p1)

    ; (need_tool p2)
    (need_medicine p2)

    ; (need_tool p3)
    ; (need_medicine p3)
    (need_food p3)
    (is_empty_c c1)
    (is_empty_c c2)
    ; (is_empty_c c3)
)

(:goal  (and
            (not(need_food p1))
            (not(need_medicine p1))

            (not(need_medicine p2))
            ; (not(need_tool p2))

            (not(need_food p3))
            ; (not(need_tool p3))

        ) 
) 
)

