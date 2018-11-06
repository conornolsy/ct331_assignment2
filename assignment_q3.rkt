 #| Conor Nolan- 16307046 Assignment 2  |#

#lang racket

(provide display_)
(provide leftChild)
(define (leftChild bTree)
(car bTree))
(provide rightChild)
(define (rightChild bTree)
(caddr bTree))
(provide valueOf)
(define (valueOf bTree)
(cadr bTree))


  #| Part A:  |#
(define (display_ bTree)
  (begin
    (cond
      ((null? (car bTree)) (display " "))
      (else 
       (display_ (car bTree)))
      )
    (display (car (cdr bTree)))
    (cond
      ((empty? (caddr bTree)) (display " "))
      (else
       (display_ (car (cdr (cdr bTree)))))
      )
    ))

(provide testA)
(define (testA)
  (printf "Part A: \n")
  (display_ '((() 5 ()) 2 ((() 3 ()) 4 (() 5 ())))))

(testA)

  #| Part B:  |#

(define (checkFor i bTree)
  (cond
   ((empty? bTree) #f)
        ((equal? i (valueOf bTree)) #t)
        ((< i (valueOf bTree))
         (checkFor i (leftChild bTree)))
        ((> i (valueOf bTree))
         (checkFor i (rightChild bTree)))
        (else bTree)))

(provide testB)
(define (testB)
(printf "\n\n Part B:  \n")
(checkFor 5 '((() 5 ()) 2 ((() 3 ()) 4 (() 5 ())))))
(testB)

  #| Part C:  |#
(provide insert)
(provide HOInsert)

(define (insert i bTree)
  (HOInsert i bTree <)
  )


(define (HOInsert i bTree <)
  (cond
        ((empty? bTree)
        (list '() i '()))
        ((equal? i (valueOf bTree)) bTree)
        ((< i (valueOf bTree))
        (list
         (HOInsert i (leftChild bTree) <)
         (valueOf bTree) (rightChild bTree)))
        (else
         (list (leftChild bTree)
               (valueOf bTree)
               (HOInsert i (rightChild bTree) <)))))


(provide testC)
(define (testC)
(printf "\nPart C: Attempting to add the number 6\n")
(printf "Before: ((() 5 ()) 2 ((() 3 ()) 4 (() 5 ()))))\n")
(printf "After: ")(insert 6 '(( () 5 ()) 2 ((() 3 ()) 4 (() 5 () )) )))
(testC)


 #| Part D:|#

(provide insertList)
(define (insertList list bTree)
  (cond
   ((empty? list) bTree)
   (else
    (insertList (cdr list)
    (insert (car list) bTree)))
  ))

(provide testD)
(define (testD)
(printf "\nPart D: Attempting to add list!\n")
(printf "Before: '((() 5 ()) 2 ((() 3 ()) 4 (() 5 ()))))\n")
(printf "After: ")(insertList '(1 2  16 6 177 3) '(( () 5 ()) 2 ((() 3 ()) 4 (() 5 () )) )))
(testD)

  #| Part E:|#

(define (sort list)
(display_ (insertList list '())))

(provide testE)
(define (testE)
(printf "\nPart E: Sorting Items!\n")
(printf "Before: 1 2 16 6 177 5 3 4 44\n")
(printf "After: ")(sort '(1 2  16 6 177 3 4 4 44) ))
(testE)

 #| Part F:  Use HOInsert from part C|#
(provide HOSort)
(define (HOSort list function)
   (display_
    (HOInsertList list '() function))
)

(provide HOInsertList)
(define (HOInsertList list bTree function)
  (cond
   ((empty? list) bTree)
   (else
    (HOInsertList (cdr list)
    (HOInsert (car list) bTree function)  function))
))

(provide lastDigit)
(define (lastDigit n1 n2)
  (< (remainder n1 10) (remainder n2 10)))

(provide testF)
(define (testF)
(printf "\n\nPart F: ")
(printf "\n\nAscending Order: \n")
(HOSort '(2 67 4 3 18 4 8 98 3) <)
(printf "\n\nDescending Order: \n")
(HOSort '(2 67 4 3 18 4 8 98 3) >)
(printf "\n\nAscending based on last digit in number: \n")
(HOSort '(2 67 4 3 18 12 4 81 8 98 3) lastDigit))
(testF)