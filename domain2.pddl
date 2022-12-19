(define (domain domain2)
    (:requirements :strips :typing)
    (:types 
        person 
        robot 
        crane
        box 
        location 
        item
        carrier
    )

    (:predicates 
        
        (is_truck ?r -r) ;; robot r is a truck
        (is_helicopter ?r - r) ;; robot r is an helicopter   
        (belongs_carrier ?c - carrier ?r - robot)   ;; carrier c belongs to robot r
        (belongs_crane ?c - crane ?r - robot)   ;; crane c belongs to robot r
        (on ?b - box ?c - carrier)  ;; box b is on carrier c
        (at_b ?b - box ?l - location) ;; box b is at location l 
        (at_p ?p - person ?l - location) ;; person p is at location l
        (at_r ?r - robot ?l - location) ;; robot r is at location l
        (at_i ?i - item ?l - location)  ;; item i is at location i
        (inside ?i - item ?b - box)   ;; item i is inside box b
        (is_empty_c ?c - crane) ;; crane c is empty
        (holding_box ?c - crane ?b - box) ;; crane c holds box b
        (holding_item ?c - crane ?i - item)
        (is_food ?i - item) ;; item i is food
        (is_medicine ?i - item) ;; item i is medicine
        (is_tool ?i - item) ;; item i is tools
        (need_food ?p - person) ;; person p need food
        (need_medicine ?p - person) ;; person p need medicine
        (need_tool ?p - person) ;; person p need tool
    )

    (:action move_robot_with_box 
      :parameters (?r - robot ?from ?to - location ?c - crane ?b - box)
      :precondition (and (at_r ?r ?from) (holding_box ?c ?b))
      :effect (and (at_r ?r ?to)
                (not (at_r ?r ?from)))
            )

    (:action move_robot_without_box
      :parameters (?r - robot ?from ?to - location ?c - crane)
      :precondition (and (at_r ?r ?from) (is_empty_c ?c))
      :effect (and (at_r ?r ?to)
                (not (at_r ?r ?from)))
            )

    ;; TODO capacity of carrier
    (:action load_box
      :parameters (?b - box ?r - robot ?c - crane ?l - location ?a - carrier)
      :precondition (and (at_r ?r ?l) (at_b ?b ?l) (belongs_crane ?c ?r) (belongs_carrier ?a ?r) (is_empty_c ?c))
      :effect (and (not(at_b ?b ?l)) (on ?b ?a))
    )

    (:action unload_box
        :parameters (?b - box ?r - robot ?c - crane ?l - location ?a - carrier)
        :precondition (and (at_r ?r ?l) (on ?b ?a) (belongs_carrier ?c ?r) (belongs_crane ?c ?r) (is_empty_c ?c))
        :effect (and (not (on ?b ?c)) (at_b ?b ?l))
    )

    (:action pickup_item_from_location
      :parameters (?i - item ?l - location ?c - crane ?r - robot)
      :precondition (and (at_r ?r ?l) (at_i ?i ?l) (is_empty_c ?c))
      :effect (and (not(at_i ?i ?l)) (not (is_empty_c ?c)) (holding_item ?c ?i))
    )

    (:action put_item_in_box
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot)
      :precondition (and (holding_item ?c ?i) (at_b ?b ?l) (at_r ?r ?l))
      :effect (and (inside ?i ?b) (not(at_i ?i ?l)) (is_empty_c ?c) (not(holding_item ?c ?i)))
    )

    (:action pick_item_from_box
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot)
      :precondition (and (at_b ?b ?l) (at_r ?r ?l) (is_empty_c ?c) (inside ?i ?b))
      :effect (and (holding_item ?c ?i) (not (inside ?i ?b)) (not(is_empty_c ?c)))
    )

    (:action pickdown_food
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :precondition (and 
                        (need_food ?p) 
                        (is_food ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (holding_item ?c ?i)
                    )
      :effect (and  (not(need_food ?p))
                    (is_empty_c ?c)
                    (not(holding_item ?c ?i)))
	   				) 

    (:action pickdown_tool
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :precondition (and 
                        (need_tool ?p) 
                        (is_tool ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (holding_item ?c ?i)
                    )
      :effect (and  (not(need_tool ?p))
                    (is_empty_c ?c)
                    (not(holding_item ?c ?i))
	   				) 
      
	)

    (:action pickdown_medicine
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :precondition (and 
                        (need_medicine ?p) 
                        (is_medicine ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (holding_item ?c ?i)
                    )
      :effect (and  (not(need_medicine ?p))
                    (is_empty_c ?c)
                    (not(holding_item ?c ?i))
	   				) 
)
)