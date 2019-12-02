(setq sum 0)
(with-open-file (stream "input")
  (do ((line (read-line stream nil) ; nil supresses warning
             (read-line stream nil)))
       ((null line))
       (setq sum ( + sum (- (floor (parse-integer line) 3) 2)))))

(print sum)
