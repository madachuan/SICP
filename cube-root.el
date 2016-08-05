(defun cube-root (x)
  "Evaluate the cube-root of x."
  (cube-root-iter 1.0 x))
(defun cube-root-iter (guess x)
  "Evaluate the cube-root of x through iteration."
  (let ((new-guess (improve guess x)))
	(if (good-enough? guess new-guess)
	    guess
	  (cube-root-iter new-guess x))))
(defun good-enough? (guess new-guess)
  "Watch how guess changes from one iteration to the next and to return true
when the change is a very small fraction of the guess."
  (< (abs (/ (- new-guess guess) guess)) 0.00001))
(defun improve (guess x)
  "Improve an approximation to the cube-root of x by Newton's method."
  (/ (+ (/ x (* guess guess))
	(* 2.0 guess))
     3.0))

(cube-root 27)
