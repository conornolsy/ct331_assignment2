  #| Conor Nolan- 16307046 Assignment 2  |#

#lang racket

;This is an example implementation of ins_beg,
;It obviously doesn't do what it should, so you
;can edit this function to get started.
;
;Please note the provide function is necessary
;for the unit tests to work. Please include a
;(provide) for each function you write in your
;submitted assignment.
;
;You may delete these comments!

(provide ins_beg)

#| Part A: append the list join the element with the list, this places the element at the front  |#

(define (ins_beg el lst)
  (append (list el) lst))

  #| Part B: Here we reverse the order of the above function, joining the element at the end of the list |#

 (provide ins_end)
  
 (define (ins_end el lst)
 (append lst (list el) ))
  
  #| Part C:  |#

 (provide cout_top_level)

  (define (cout_top_level list)
    
  (if (null? list)
      0
      (+ 1 (cout_top_level  (cdr list)))))


#| Part D: |#
(provide count_instances)


(define (count_instances el list)
  (cond ((empty? list)
         0)
        ((equal? el (car list))
         (+ 1 (count_instances el (cdr list))))

        (else
         (count_instances el (cdr list)))
  ))

#| Part E: |#

(provide count_instances_tr)
(provide count_instances_)

(define (count_instances_tr el list)
  (count_instances_ el list 0)) 

(define (count_instances_ el list t)
  (cond ((null? list) t)
      ((equal? el (car list))
      (count_instances_ el (cdr list) (+ 1 t)))
      (else
       (count_instances_ el (cdr list) t))
 ))

#| Part F: |#

(provide count_instances_deep)

(define (count_instances_deep el list)
  (cond
    ((empty? list) 0)
        ((equal? el
                 (car list))
         (+ 1 (count_instances_deep el (cdr list))))
        ((list? (car list))
         (+ 0 (count_instances_deep el (cdr list))
             (count_instances_deep el (car list))))
        (else
         (count_instances_deep el (cdr list)))
 ))
