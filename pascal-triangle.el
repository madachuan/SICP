(defun pascal-triangle (row col)
  "Evaluate any element based on the number of row and the number of column in a
Pascal's triangle."
  (cond ((= row 0) 1)
	((= col 0) 1)
	((= row col) 1)
	(t (+ (pascal-triangle (- row 1) col)
	      (pascal-triangle (- row 1) (+ col 1))))))

(pascal-triangle 4 2)
