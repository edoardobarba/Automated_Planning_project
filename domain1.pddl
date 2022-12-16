(define (domain domain1-domain)
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
        (is-empty ?b - box) ;; box b is empty
        (is-full ?b - box) ;; box b is full
        (at_b ?b - box ?l - location) ;; box b is at location l 
        (at_p ?p - person ?l - location) ;; person p is at location l
        (at_r ?r - robot ?l - location) ;; robot r is at location l
        (empy ?c - crane) ;; crane c is empty
        (holding_box ?c - crane ?b - box) ;; crane c holds box b
        (holding_item ?c - crane ?i - item) ;; crane c holds item i
        (is_food ?i - item) ;; item i is food
        (is_medicine ?i - item) ;; item i is medicine
        (is_tools ?i - item) ;; item i is tools
        (need_food ?p - person) ;; person p need food
        (need_medicine ?p - person) ;; person p need medicine
        (need_tool ?p - person) ;; person p need tool
    )


    (:action action_name
      :parameters ()
      :precondition (and )
      :effect (and )
    )
  
    
  )
  
