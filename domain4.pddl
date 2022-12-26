(define (domain domain2)
    (:requirements :strips :typing :numeric-fluents :negative-preconditions :durative-actions)
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
        
        (is_truck ?r - r) ;; robot r is a truck
        (is_helicopter ?r - r) ;; robot r is an helicopter   
        (belongs_carrier ?a - carrier ?r - robot)   ;; carrier c belongs to robot r
        (belongs_crane ?c - crane ?r - robot)   ;; crane c belongs to robot r
        (on ?b - box ?a - carrier)  ;; box b is on carrier c
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

    (:functions 
      (max_capacity_carrier) ;max capacity of carrier
      (max_capacity_box) ;max capacity of box
      (box_count ?c - carrier) ;number of boxes on the carrier c
      (item_count ?b - box) ;number of items on the box b
    )

    (:durative-action move_robot
      :parameters (?r - robot ?from ?to - location ?c - crane)
      :duration (= ?duration 15)
      :condition (and (at start (at_r ?r ?from))
                      (over all (is_empty_c ?c)) 
                      (over all (belongs_crane ?c ?r)) 
                  )
      :effect (and (at start (not (at_r ?r ?from)))
                   (at end   (at_r ?r ?to))
              )
    )
    ;; TODO capacity of carrier
    (:durative-action load_box
      :parameters (?b - box ?r - robot ?c - crane ?l - location ?a - carrier )
      :duration (= ?duration 5);; last 5 time points
      :condition (and ( over all (at_r ?r ?l))
                      ( at start (at_b ?b ?l))
                      ( over all (belongs_crane ?c ?r)) 
                      ( over all (belongs_carrier ?a ?r)) 
                      ( at start (is_empty_c ?c))  
                      ( at start (< (box_count ?a) (max_capacity_carrier)))
                  ) 
      :effect (and ( at start (not(at_b ?b ?l))) 
                   ( at end   (on ?b ?a)) 
                   ( at end   (increase (box_count ?a) 1))
              )
    )

    (:durative-action unload_box
        :parameters (?b - box ?r - robot ?c - crane ?l - location ?a - carrier)
        :duration (= ?duration 5)
        :condition (and ( over all (at_r ?r ?l)) 
                        ( at start (on ?b ?a))
                        ( over all (belongs_carrier ?a ?r)) 
                        ( over all (belongs_crane ?c ?r)) 
                        ( at start (is_empty_c ?c))                     
                    )
        :effect (and ( at start (not (on ?b ?a))) 
                     ( at end   (at_b ?b ?l)) 
                     ( at end   (decrease (box_count ?a) 1))
                )
    )
    ;; Mostafa
    (:durative-action pickup_item_from_location
      :parameters (?i - item ?l - location ?c - crane ?r - robot)
      :duration (= ?duration 3)
      :condition (and ( over all (at_r ?r ?l)) 
                      ( at start (at_i ?i ?l)) 
                      ( at start (is_empty_c ?c)) 
                      ( over all (belongs_crane ?c ?r))
                  )
      :effect (and  ( at start (not(at_i ?i ?l))) 
                    ( at end   (not (is_empty_c ?c))) 
                    ( at end   (holding_item ?c ?i))    
              )
    )
    ;; Mostafa
    (:durative-action put_item_in_box
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot)
      :duration (= ?duration 3)
      :condition (and ( at start (holding_item ?c ?i)) 
                      ( over all (at_b ?b ?l)) 
                      ( over all (at_r ?r ?l))
                      ( over all (belongs_crane ?c ?r)) 
                      ( at start (< (item_count ?b) (max_capacity_box)))
                  )
      :effect   (and ( at end   (inside ?i ?b)) 
                     ( at start (not(at_i ?i ?l))) 
                     ( at end   (is_empty_c ?c)) 
                     ( at end   (not(holding_item ?c ?i))) 
                     ( at end   (increase (item_count ?b) 1))
                )
    )
    ;; Mostafa
    (:durative-action pick_item_from_box
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot)
      :duration (= ?duration 3)
      :condition (and ( over all (at_b ?b ?l)) 
                      ( over all (at_r ?r ?l)) 
                      ( at start (is_empty_c ?c))
                      ( at start (inside ?i ?b)) 
                      ( over all (belongs_crane ?c ?r))
                )
      :effect (and ( at start (holding_item ?c ?i))
                   ( at start (not (inside ?i ?b))) 
                   ( at start (not(is_empty_c ?c))) 
                   ( at end   (decrease (item_count ?b) 1))    
              )
    )
    ;; edoardo
    (:durative-action pickdown_food
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :duration (= ?duration 3);; last 5 time points

      :condition (and 
                        (need_food ?p) 
                        (is_food ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (holding_item ?c ?i)
                        (belongs_crane ?c ?r)
                    )
      :effect (and  (not(need_food ?p))
                    (is_empty_c ?c)
                    (not(holding_item ?c ?i)))
	   				) 
    ;; edoardo

    (:durative-action pickdown_tool
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
        :duration (= ?duration 5);; last 5 time points

      :condition (and 
                        (need_tool ?p) 
                        (is_tool ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (holding_item ?c ?i)
                        (belongs_crane ?c ?r)
                    )
      :effect (and  (not(need_tool ?p))
                    (is_empty_c ?c)
                    (not(holding_item ?c ?i))
	   				) 
      
	)
    ;; edoardo
    (:durative-action pickdown_medicine
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :duration (= ?duration 3)

      :condition (and 
                        (need_medicine ?p) 
                        (is_medicine ?i)
                        (at_p ?p ?l)
                        (at_r ?r ?l)
                        (holding_item ?c ?i)
                        (belongs_crane ?c ?r)
                    )
      :effect (and  (not(need_medicine ?p))
                    (is_empty_c ?c)
                    (not(holding_item ?c ?i))
	   				) 
)
)