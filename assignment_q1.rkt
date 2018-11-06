  #| Conor Nolan- 16307046 Assignment 2  |#


#lang racket

(cons 5 6)
#| Here a cons pair is created out of two pieces of data (integers) |#
#|we can see in the result the two values are joined with a dot inbetween |#

(cons 5 (cons 6 '(7)))
#| Here we have created a list of 3 numbers using cons function
   Instead of a second element, we have a another cons function,
   joining the three elements together to create a list|#

(cons "Hello" (cons 5 (cons (cons 6 (cons 7 '(8))) '())))
#| Here we have created a list containing a string, number and nested list of 3 numbers
   Using cons function the same as before, we join 3 numbers, then another number and a string |#

(list "hello" 5 '(6 7 8))
#| Here we simply use the list function, elements are seperated by a space and are displayed
   between parentheses using the quote character. |#

(append '("Hello") '(5) '((6 7 8)))

#|The append function joins components from several lists into one. Here three "lists"
 (hello) (5) and (6 7 8) are joined as one list |#

#| Cons is a constructor for all pairs and must only take two arguments,
   list and append both allow multiple numbers of arguments,
   append joins serveral arguments, primarly lists, and joins them in a new list|#