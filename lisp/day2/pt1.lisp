(setq l (make-array '5
                    :initial-contents
                    '(1 0 0 0 99)))
(with-open-file (stream "input")
  (do ((line-read stream nil)
       read-line stream nil)))

(defun do-op (li idx)
  (setq op (aref li idx)
        one (aref li (+ idx 1))
        two (aref li (+ idx 2))
        )
  (setq res (if (= op 0)
              (+ one two)
              (* one two)))
  (setf (aref l two) res) ;; literally how the fuck does this work?
  )

(defun pt1 (l idx)
  (setq op (aref l idx))
  (print op)
  (if (not (= op 99))
    (progn
      (funcall 'do-op l idx)
      (funcall 'pt1 l (+ idx 4))))
  l)

(print (funcall 'pt1 l 0))
