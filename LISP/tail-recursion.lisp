(defun tailfact(x res)
        (if (or (eql x 0) (eql x 1))
        	res
        	(tailfact (- x 1) (* res x))

        )

)

(format t "Factorial of 5 is: ~d ~%" (tailfact 5 1))
(format t "Factorial of 6 is: ~d ~%" (tailfact 6 1))
(format t "Factorial of 20 is: ~d ~%" (tailfact 20 1))
(format t "Factorial of 30 is: ~d ~%" (tailfact 30 1))