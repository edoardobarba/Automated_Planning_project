(define (domain domain1)
    (:requirements :strips :typing)
    (:types 
        person 
        robot 
        crane
        box 
        location 
        item
    )

    (:predicates 
        (is_empty_b ?b - box) ;; box b is empty
        (is_full ?b - box) ;; box b is full
        (at_b ?b - box ?l - location) ;; box b is at location l 
        (at_p ?p - person ?l - location) ;; person p is at location l
        (at_r ?r - robot ?l - location) ;; robot r is at location l
        (at_i ?i - item ?l - location)  ;; item i is at location i
        (inside ?i - item ?b - box)   ;; item i is inside box b
        (is_empty_c ?c - crane) ;; crane c is empty
        (holding_box ?c - crane ?b - box) ;; crane c holds box b
        (holding_item ?c - crane ?i - item) ;; crane c holds item i
        (is_food ?i - item) ;; item i is food
        (is_medicine ?i - item) ;; item i is medicine
        (is_tool ?i - item) ;; item i is tools
        (need_food ?p - person) ;; person p need food
        (need_medicine ?p - person) ;; person p need medicine
        (need_tool ?p - person) ;; person p need tool
    )


    (:action move_robot 
      :parameters (?r - robot ?from ?to - location)
      :precondition (at_r ?r ?from) 
      :effect (and (at_r ?r ?to)
                (not (at_r ?r ?from)))
            )
    

    (:action pickup_box
      :parameters (?b - box ?r - robot ?c - crane ?l - location)
      :precondition (and (at_r ?r ?l) (at_b ?b ?l) (is_empty_c ?c))
      :effect (and (holding_box ?c ?b) (not (is_empty_c ?c)))
    )

    (:action pickdown_box
      :parameters (?b - box ?r - robot ?c - crane ?l - location)
      :precondition (and (holding_box ?c ?b) (at_r ?r ?l))
      :effect (and (at_b ?b ?l) (is_empty_c ?c) (not (holding_box ?c ?b)))
    )
    

    (:action pickup_item
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot)
      :precondition (and (at_b ?b ?l) (at_r ?r ?l) (at_i ?i ?l) (is_empty_c ?c))
      :effect (and (inside ?i ?b) (not(at_i ?i ?l)) (not(is_empty_c ?c) ))
    )

    (:action pickdown_food
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot ?p - person)
      :precondition (and 
                        (need_food ?p) 
                        (is_food ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (at_b ?b ?l)
                        (is_empty_c ?c)
                        (inside ?i ?b)
                    )
      :effect (and  (not(need_food ?p))
                    (not(inside ?i ?b))
	   				) 
      
    )

    (:action pickdown_tool
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot ?p - person)
      :precondition (and 
                        (need_tool ?p) 
                        (is_tool ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (at_b ?b ?l)
                        (is_empty_c ?c)
                        (inside ?i ?b)
                    )
      :effect (and  (not(need_tool ?p))
                    (not(inside ?i ?b)
                    )
    				)
	)
    (:action pickdown_medicine
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot ?p - person)
      :precondition (and 
                        (need_medicine ?p) 
                        (is_medicine ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (at_b ?b ?l)
                        (is_empty_c ?c)
                        (inside ?i ?b)
                    )
      :effect (and  (not(need_medicine?p))
                    (not(inside ?i ?b)
                    )
    				)
	)
)