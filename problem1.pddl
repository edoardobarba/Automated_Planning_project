(define (problem problem1) (:domain domain1)
(:objects 
    r1 - robot
    c1 - crane
    p1 - person
    i1 - item
    i2 - item
    b1 - box
    l1 - location 
    l2 - location    
    l3 - location    
    l4 - location    
    l5 - location    
    l6 - location       
)

(:init
    (at_r r1 l1)
    (at_b r1 l1)
    (at_i i1 l1)
    (at_i i2 l1)
    (at_p p1 l2)
    (is_food i1)
    (is_medicine i2)
    (need_food p1)
    (is_empty_b b1)
    (is_empty_c c1)
)

(:goal ( (not(need_food p1)))
;; planutils run downward "--alias lama-first domain1.pddl problem1.pddl"
;; remove the ;; if you donot need it 
;un-comment the following line if metric is needed
;(:metric minimize (???))
)
