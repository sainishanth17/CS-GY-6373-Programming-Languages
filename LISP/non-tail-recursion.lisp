(defun fact(x)

		(if (or (eql x 0) (eql x 1))
				1
				(* x (fact (- x 1)))
		)

)

(format t "Factorial of 5 is: ~d ~%" (fact 5))
(format t "Factorial of 6 is: ~d ~%" (fact 6))
(format t "Factorial of 20 is: ~d ~%" (fact 20))
(format t "Factorial of 30 is: ~d ~%" (fact 30))
