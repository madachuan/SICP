(defun bootstrap ()
  "This function calls itself when invoked."
  (bootstrap))
(defun eval-order-test (x y)
  "Test whether the interpreter we are faced with is using
 applicative-order evaluation or normal-order evaluation."
  (if (= x 0) 0 y))

(eval-order-test 0 (bootstrap))
