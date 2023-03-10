(define (domain domain4)
    (:requirements :strips :adl  :typing :fluents  :durative-actions :negative-preconditions)
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
        (belongs_carrier ?a - carrier ?r - robot)  
        (belongs_crane ?c - crane ?r - robot)  
        (on ?b - box ?a - carrier)  
        (at_b ?b - box ?l - location) 
        (at_p ?p - person ?l - location) 
        (at_r ?r - robot ?l - location) 
        (at_i ?i - item ?l - location)  
        (inside ?i - item ?b - box)   
        (is_empty_c ?c - crane) 
        (holding_box ?c - crane ?b - box) 
        (holding_item ?c - crane ?i - item)
        (is_food ?i - item) 
        (is_medicine ?i - item) 
        (is_tool ?i - item) 
        (need_food ?p - person) 
        (need_medicine ?p - person) 
        (need_tool ?p - person) 
        (satisfied_p_for_food ?p - person) 
        (satisfied_p_for_medicine ?p - person) 
        (satisfied_p_for_tool ?p - person) 
    )

    (:functions 
      (max_capacity_carrier ?a - carrier) 
      (max_capacity_box) 
      (box_count ?c - carrier) 
      (item_count ?b - box) 
    )

    (:durative-action move_robot
      :parameters (?r - robot ?from ?to - location ?c - crane)
      :duration (= ?duration 50)
      :condition (and (at start (at_r ?r ?from))
                      (over all (is_empty_c ?c)) 
                      (over all (belongs_crane ?c ?r)) 
                  )
      :effect (and (at start (not (at_r ?r ?from)))
                   (at end   (at_r ?r ?to))
              )
    )
    (:durative-action load_box
      :parameters (?b - box ?r - robot ?c - crane ?l - location ?a - carrier )
      :duration (= ?duration 5)
      :condition (and ( over all (at_r ?r ?l))
                      ( at start (at_b ?b ?l))
                      ( over all (belongs_crane ?c ?r)) 
                      ( over all (belongs_carrier ?a ?r)) 
                      ( at start (is_empty_c ?c))  
                      ( at start (< (box_count ?a) (max_capacity_carrier ?a)))
                  ) 
      :effect (and ( at start (not(at_b ?b ?l))) 
                   ( at end   (on ?b ?a)) 
                   ( at start   (increase (box_count ?a) 1))
                   ( at start (not (is_empty_c ?c)))
                   ( at end   (is_empty_c ?c)) 
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
                     ( at start   (decrease (box_count ?a) 1))
                     ( at start (not (is_empty_c ?c)))
                     ( at end   (is_empty_c ?c)) 
                )
    )
    (:durative-action pickup_item_from_location
      :parameters (?i - item ?l - location ?c - crane ?r - robot)
      :duration (= ?duration 3)
      :condition (and ( over all (at_r ?r ?l)) 
                      ( at start (at_i ?i ?l)) 
                      ( at start (is_empty_c ?c)) 
                      ( over all (belongs_crane ?c ?r))
                  )
      :effect (and  ( at start (not(at_i ?i ?l))) 
                    ( at start   (not (is_empty_c ?c))) 
                    ( at end   (holding_item ?c ?i))    
              )
    )
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
                     ( at end  (is_empty_c ?c)) 
                     ( at start   (not(holding_item ?c ?i))) 
                     ( at start   (increase (item_count ?b) 1))
                )
    )
    (:durative-action pick_item_from_box
      :parameters (?i - item ?b - box ?l - location ?c - crane ?r - robot)
      :duration (= ?duration 3)
      :condition (and ( over all (at_b ?b ?l)) 
                      ( over all (at_r ?r ?l)) 
                      ( at start (is_empty_c ?c))
                      ( at start (inside ?i ?b)) 
                      ( over all (belongs_crane ?c ?r))
                )
      :effect (and ( at end (holding_item ?c ?i))
                   ( at start (not (inside ?i ?b))) 
                   ( at start (not(is_empty_c ?c))) 
                   ( at start   (decrease (item_count ?b) 1))    
              )
    )
    (:durative-action pickdown_food
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :duration (= ?duration 3)

      :condition (and 
                        (at start   (need_food ?p)) 
                        (over all   (is_food ?i))
                        (over all   (at_p ?p ?l))
                        (over all   (at_r ?r ?l))
                        (at start   (holding_item ?c ?i))
                        (over all   (belongs_crane ?c ?r))
                    )
      :effect (and  (at end  (not(need_food ?p)))
                    (at end  (is_empty_c ?c))
                    (at start  (not(holding_item ?c ?i)))
                    (at end   (satisfied_p_for_food ?p))
      )
    )
             
	   				

    (:durative-action pickdown_tool
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :duration (= ?duration 3)

      :condition (and 
                        (at start   (need_tool ?p)) 
                        (over all   (is_tool ?i))
                        (over all   (at_p ?p ?l))
                        (over all   (at_r ?r ?l))
                        (at start   (holding_item ?c ?i))
                        (over all   (belongs_crane ?c ?r))
                    )
      :effect (and  (at end  (not(need_tool ?p)))
                    (at end  (is_empty_c ?c))
                    (at start  (not(holding_item ?c ?i)))
                    (at end   (satisfied_p_for_tool ?p))

      )
      
	)
    (:durative-action pickdown_medicine
      :parameters (?i - item ?l - location ?c - crane ?r - robot ?p - person)
      :duration (= ?duration 3)

      :condition (and 
                        (at start   (need_medicine ?p)) 
                        (over all   (is_medicine ?i))
                        (over all   (at_p ?p ?l))
                        (over all   (at_r ?r ?l))
                        (at start   (holding_item ?c ?i))
                        (over all   (belongs_crane ?c ?r))
                    )
      :effect (and  (at end  (not(need_medicine ?p)))
                    (at end  (is_empty_c ?c))
                    (at start  (not(holding_item ?c ?i)))
                    (at end   (satisfied_p_for_medicine ?p))

      )
    )
    
)