(defun ackermann (x y)
  "This is Ackermann's function."
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(t (ackermann (- x 1) (ackermann x (- y 1))))))

(ackermann 1 10)
(ackermann 2 4)
(ackermann 3 3)
