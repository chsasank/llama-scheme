;;;; chicken.internal.import.scm - GENERATED BY CHICKEN 5.3.0rc4 -*- Scheme -*-

(##sys#with-environment
  (lambda ()
    (##sys#register-compiled-module
      'chicken.internal
      'internal
      (scheme#list)
      '((string->c-identifier . chicken.internal#string->c-identifier)
        (library-id . chicken.internal#library-id)
        (valid-library-specifier? . chicken.internal#valid-library-specifier?)
        (module-requirement . chicken.internal#module-requirement)
        (check-for-multiple-bindings
          .
          chicken.internal#check-for-multiple-bindings)
        (macro-subset . chicken.internal#macro-subset)
        (fixup-macro-environment . chicken.internal#fixup-macro-environment)
        (make-hash-table . chicken.internal#make-hash-table)
        (hash-table-ref . chicken.internal#hash-table-ref)
        (hash-table-set! . chicken.internal#hash-table-set!)
        (hash-table-update! . chicken.internal#hash-table-update!)
        (hash-table-for-each . chicken.internal#hash-table-for-each)
        (hash-table-size . chicken.internal#hash-table-size)
        (default-imports . chicken.internal#default-imports)
        (default-syntax-imports . chicken.internal#default-syntax-imports))
      (scheme#list)
      (scheme#list))))

;; END OF FILE
