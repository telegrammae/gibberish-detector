;; TASK 1 - Loading a file 

(defun file-string (path)
  (with-open-file (stream path)
    (let ((data (make-string (file-length stream))))
      (read-sequence data stream)
      data
    )
  )
)

