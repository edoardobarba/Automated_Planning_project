(define (problem problem_example1) (:domain domain1)
(:objects 
    r1 - robot
    c1 - crane
    p1 - person
    p2 - person
    p3 - person
    i1 - item
    i2 - item
    i3 - item
    i4 - item
    i5 - item
    i6 - item
    ;i7 - item
    b1 - box
    b2 - box
    b3 - box
    l1 - location 
    l2 - location 
    l3 - location   
)

(:init
    (at_r r1 l1)
    (at_b b1 l1)
    (at_b b2 l1)
    (at_b b3 l1)
    (at_i i1 l1)
    (at_i i2 l1)
    (at_i i3 l1)
    (at_i i4 l1)
    (at_i i5 l1)
    (at_i i6 l1)
    ;(at_i i7 l1)
    (at_p p1 l2)
    (at_p p2 l2)
    ;(at_p p3 l3)
    (is_food i1)
    (is_medicine i2)
    (is_tool i3)
    (is_food i4)
    (is_medicine i5)
    (is_tool i6)
    ;(is_food i7)
    (need_food p1)
    (need_medicine p1)
    (need_tool p1)
    (need_food p2)
    (need_medicine p2)
    (need_tool p2)
    ;(need_food p3)
    
    (is_empty_c c1)
)

(:goal  (and
            (not(need_food p1))
            (not(need_medicine p1))
            (not(need_tool p1))
            (not(need_food p2))
            (not(need_medicine p2))
            (not(need_tool p2))
            ;(not(need_food p3))
        )
)
)
