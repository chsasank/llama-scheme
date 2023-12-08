;;;; run.scm


(import (chicken format)
        (chicken pathname)
        (chicken process)
        (chicken process-context))

(define prefix (pathname-directory (car (argv))))
(define csc (make-pathname prefix "csc"))  ; hack

(system* (format "~s tests.scm -k -debug F -c++" csc))
(system* "./tests")

(system* (format "~s -k cplusplus-test.scm -debug F -c++" csc))
(system* "./cplusplus-test")

(system* (format "~s -k foreign-transformer-test.scm -debug F" csc))
(system* "./foreign-transformer-test")
