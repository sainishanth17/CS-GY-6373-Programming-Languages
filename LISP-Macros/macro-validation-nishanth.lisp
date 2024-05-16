(defmacro validate (fun_def)
  (setq fun (nth 1 fun_def))
  (terpri)
  (let ((defun (nth 0 fun))
        (name (nth 1 fun))
        (args (nth 2 fun))
        (body (nth 3 fun))
        (valid_args '(x y z))
        (check_def '()))
    (setq check #'(lambda (e) (if (member e valid_args) t nil)))

    ;; Check if the form has the correct number of items
      (if (= (length fun) 4)
        (progn
          (terpri)
        )
        (progn
          (format t "The form does not have the correct number of items.")
          (setq check_def (append '("Invalid Number of Items!") check_def))
          (terpri)
        )
    )
    (terpri)

    (if (eq 'defun defun)
        (progn 
            (format t "~a : Valid Keyword! Expected keyword DEFUN found." defun)
            (terpri)
        )
        (progn
            (format t "First item is not defun, hence not a valid function!")
            (terpri)
            (setq check_def (append '("Invalid Keyword") check_def))
        )   
    )
    (if (symbolp name)
        (if (and (symbolp name) (digit-char-p (char (string (symbol-name name)) 0)))
            (progn
                (format t "~a : Function name cannot start with a digit!" name)
                (terpri)
                (setq check_def (append '("Invalid Name") check_def))
            )
            (progn
                (format t "~a : Valid function name." name)
                (terpri)
            )
        )
        (progn
            (format t "~a : Not a valid function name!" name)
            (terpri)
            (setq check_def (append '("Invalid Name") check_def))
        )
    )
    ;; Check the arguments
    (if (listp args)
        (loop for i in args
            do
                (if (funcall check i)
                    (progn
                        (format t "~a: Parameters Allowed. X, Y, and Z are the only valid parameters." i)
                        (terpri)
                    )
                    (progn
                        (format t "~a: Parameters are not allowed. Not X, Y, or Z!" i)
                        (terpri)
                        (setq check_def (append '("Invalid Parameter") check_def))
                    )
                )
        )
    )
    ;; Check if there are no arguments
    (if (null args)
        (progn
            (format t "No parameters present, it is still legal!")
            (terpri)
        )
    )
    ;; Check if there is no function body
    (if (null body)
        (progn
            (format t "Invalid Function Body. No Body Present!")
            (setq check_def (append '("No Function Body") check_def))
            (terpri)
        )
        (progn
            (format t "Valid Function Body")
            (terpri)
        )
    )
    ;; Check if there are any errors in the function definition
    (if (null check_def)
        (format t "Valid Function Definition.")
        (format t "Invalid Function Definition.")
    )
    (terpri)
    (terpri)   
  )
)

; VALID FUNCTION TEST - (PARAMS, NAMES, CASE SENSITIVITY)

(validate `(defun abc123 (X y Z) (+ x y))) ; CASE SENSITIVE CHECK (IT SHOULD WORK IRRESPECTIVE OF THE CASE)
(validate `(defun fact (x y) (+ x y))) ; ALL LOWERS 
(validate `(defun abc123 (X y Z) (+ x y))); ALL CAPITALS 



; INVALID FUNCTION NAMES TEST 

(validate `(defun 123 (x y z) "abc"))
(validate `(define 0.0 (a b c)))
(validate `(defun 123xyz (x x) 12))


; TEST IF THE FUNCTION HAS VALID NUMBER OF ITEMS 

(validate '(defun xyc abd 234 (n)))
(validate '(defun xyc (n)(x y)(x x)))

; EMPTY PARAMETER TESTING - FUNCTION SHOULD ONLY SUPPORT X, Y, Z AND EMPTY PARAMETERS, EMPTY PARAMETERS ARE ALSO VALID

(validate `(defun func-no-params () (+ 1 2))) ; EMPTY PARAMETERS TEST - STILL VALID ( AS PER PROFESSOR'S SLACK UPDATE )
(validate `(defun another-func () "Hello, world!")) ; Valid function definition
(validate `(defun empty-func () nil)) ; Valid function definition
(validate `(defun no-params () (format t "No parameters required."))) ; Valid function definition

; EMPTY BODY TESTING - I HAVE ENFORCED A RULE WHERE THE FUNCTION IS DEEMED INVALID IF THERE IS NO BODY! 

(validate `(defun empty-func () nil)) ; 
(validate `(defun empty-func () ())) ;


; FUNCTION STARTS WITH DEFUN TEST - Function should start with the keyword defun

(validate `(func abc123 (X y Z) (+ x y))) ; 
(validate `(func fact (x y) (+ x y))) ; 
(validate `(func abc123 (X y Z) (+ x y))); 

; PASSING ILLEGAL PARAMETERS TEST - Function should only accept X, Y, Z or x,y,z 

(validate `(func abc123 (P Q R) (+ x y))) ; 
(validate `(func fact (p q) (+ x y))) ; 
(validate `(func abc123 (a b c) (+ x y))); 