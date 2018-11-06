  #| Conor Nolan- 16307046 Assignment 2  |#


#lang racket

(require (file "assignment_q2.rkt"))

;
;Don't worry about this file unless you are doing the extra credit tests. 
;

;This structure allows a single function call
;to run every test in sequence, rather than
;calling each function separately.

(define (runTests)
  (begin
    (display "Running tests...\n")
    ;begin calling test functions
    (printf "Test 1: ~a ~a" (test_ins_beg)(equal?(test_ins_beg) '(1 2 3 4)))
    (printf "\nTest 2: ~a ~a" (test_ins_end)(equal?(test_ins_end) '(2 3 4 1)))
    (printf "\nTest 3: ~a ~a" (test_cout_top_level)(equal?(test_cout_top_level) '7))
    (printf "\nTest 4: ~a ~a" (test_count_instances)(equal?(test_count_instances) '3))
    (printf "\nTest 5: ~a ~a" (test_count_instances_tr)(equal?(test_count_instances_tr) '3))
    (printf "\nTest 6: ~a ~a" (test_count_instances_deep)(equal?(test_count_instances_deep) '4))
    ;end calling test functions
    (display "\nTests complete!\n")))

   


;Begin test functions: Here element 1 should be inserted at front of list, giving output (1 2 3 4)
(define (test_ins_beg)
  (ins_beg '1 '(2 3 4)) )

(define (test_ins_end)
  (ins_end 1 '(2 3 4)) )

(define (test_cout_top_level)
  (cout_top_level '(1 2 3 4 19 5 2)))

(define (test_count_instances)
  (count_instances 4 '(1 2 2 3 4 4 4 5 5 6)))

(define(test_count_instances_tr)
(count_instances_tr 4 '(1 2 2 3 4 4 4 5 5 6))) 

(define (test_count_instances_deep)
  (count_instances_deep 4 (cons 4 '(1 2 2 3 4 4 4 5 5 6))))




;End test functions

;Run the tests
(runTests)