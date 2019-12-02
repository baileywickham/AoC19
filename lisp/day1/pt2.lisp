(setq sum 0)

(defun fuelffuel (f)
  (setq extra (- (floor f 3) 2))
    (if (> 0 extra)
      (funcall fuelffuel extra))
    extra) ; ret extra


(with-open-file (stream "input")
  (do ((line (read-line stream nil) ; nil supresses warning
             (read-line stream nil)))
       ((null line))
       (setq i (- (floor (parse-integer line) 3) 2))
       (setq sum ( + sum (+ (funcall 'fuelffuel i) i)))))

(print sum)
