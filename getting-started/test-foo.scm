; file: test-foo.scm

(import bind coops cplusplus-object)

(bind* "#include \"Foo.h\"")

(define x (new <Foo> 99))
(print (getX x))              ; prints ''99''
(setX x 42)
(print (getX x))              ; prints ''42''
(delete x)