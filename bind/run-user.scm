(import srfi-4)
(import bind)
(bind* "#include \"run.h\"")

; (set! x (f32vector 1 2 3 4))
; (softmax x (f32vector-length x))
; (print x)

(define (matmul-test n d)
    (set! xout (make-f32vector 2 0))
    (set! w (make-f32vector (* d n) 2.0))
    (set! x (make-f32vector n 1.0))
    (matmul xout x w n d)
    xout)

(print (matmul-test 2000 200))