;;;; bind.scm


(module bind (bind
	      bind*
	      bind-type 
	      bind-file
	      bind-file*
	      bind-opaque-type
	      bind-rename
	      bind-rename/pattern
	      bind-options
	      bind-include-path)

(import scheme (chicken base) (chicken foreign) (chicken syntax))

(begin-for-syntax
  (import bind-translator)
  (import (chicken io))
  (import srfi-1)
  (import srfi-13)

  (define emitted-prelude #f)
  (define prelude #<<EOF
#define ___fixnum           int
#define ___number           double
#define ___bool             int
#define ___byte             char
#define ___scheme_value     C_word
#define ___scheme_pointer   void *
#define ___blob             void *
#define ___pointer_vector   void **
#define ___symbol           char *
#define ___safe
#define ___declare(x, y)
#define ___specialize
#define ___abstract
#define ___discard
#define ___in
#define ___out
#define ___inout
#define ___mutable
#define ___length(var)
#define ___pointer
#define ___u32              C_u32
#define ___s32              C_s32
#define ___u64              C_u64
#define ___s64              C_s64
EOF
))

(define-syntax bind
 (er-macro-transformer
  (lambda (x r c)
    (let ((strs (append (cdr x) '("\n"))))
      `(,(r 'begin)
	,@(parse-easy-ffi (string-concatenate strs) r))))))
  
(define-syntax bind*
 (er-macro-transformer
  (lambda (x r c)
    (let* ((strs (append (cdr x) '("\n")))
           (decls (if emitted-prelude strs (cons prelude strs))))
      (set! emitted-prelude #t)
      `(,(r 'begin)
	(,(r 'declare) (foreign-declare ,@decls))
	(,(r 'bind) ,@strs)) ) )))

(define-for-syntax (bind:read-file f)
  (let ((fname 
	 (cond ((string? f) f)
	       ((symbol? f) (symbol->string (strip-syntax f)))
	       (else
		(syntax-error 'bind-file "invalid filename" f)))))
    (with-input-from-file fname read-string)))

(define-syntax bind-file
  (er-macro-transformer 
    (lambda (x r c)
      `(,(r 'bind) ,@(map bind:read-file (cdr x))))))

(define-syntax bind-file*
  (er-macro-transformer
    (lambda (x r c)
      `(,(r 'bind*) ,@(map bind:read-file (cdr x))))))

(define-syntax bind-include-path
 (er-macro-transformer
  (lambda (x r c)
    (set! ffi-include-path-list (append (cdr x) ffi-include-path-list))
    `(,(r 'void) ) ) ))

(define-syntax bind-type
  (er-macro-transformer
    (lambda (x r c)
      (parse-type-declaration (cdr x) r))))

(define-syntax bind-opaque-type
  (er-macro-transformer
    (lambda (x r c)
      (parse-opaque-type-declaration (cdr x) r))))

(define-syntax bind-options
  (er-macro-transformer
    (lambda (x r c)
      (apply set-bind-options (strip-syntax (cdr x)))
      `(,(r 'void)))))

(define-syntax bind-rename
  (er-macro-transformer
    (lambda (x r c)
      (if (= 2 (length (cdr x)))
          (apply set-renaming (strip-syntax (cdr x)))
          (syntax-error 'bind-rename "bad number of arguments" x))
      `(,(r 'void)))))

(define-syntax bind-rename/pattern
  (er-macro-transformer
    (lambda (x r c)
      (if (= 2 (length (cdr x)))
          (apply set-renaming (append (strip-syntax (cdr x)) '(regex: #t)))
          (syntax-error 'bind-rename "bad number of arguments" x))
      `(,(r 'void)))))

)
