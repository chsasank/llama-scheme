;;;; chicken.compiler.core.import.scm - GENERATED BY CHICKEN 5.3.0rc4 -*- Scheme -*-

(##sys#with-environment
  (lambda ()
    (##sys#register-compiled-module
      'chicken.compiler.core
      'compiler
      (scheme#list)
      '((analyze-expression . chicken.compiler.core#analyze-expression)
        (canonicalize-expression
          .
          chicken.compiler.core#canonicalize-expression)
        (compute-database-statistics
          .
          chicken.compiler.core#compute-database-statistics)
        (initialize-compiler . chicken.compiler.core#initialize-compiler)
        (perform-closure-conversion
          .
          chicken.compiler.core#perform-closure-conversion)
        (perform-cps-conversion . chicken.compiler.core#perform-cps-conversion)
        (prepare-for-code-generation
          .
          chicken.compiler.core#prepare-for-code-generation)
        (build-toplevel-procedure
          .
          chicken.compiler.core#build-toplevel-procedure)
        (all-import-libraries . chicken.compiler.core#all-import-libraries)
        (preserve-unchanged-import-libraries
          .
          chicken.compiler.core#preserve-unchanged-import-libraries)
        (bootstrap-mode . chicken.compiler.core#bootstrap-mode)
        (compiler-syntax-enabled
          .
          chicken.compiler.core#compiler-syntax-enabled)
        (emit-closure-info . chicken.compiler.core#emit-closure-info)
        (emit-profile . chicken.compiler.core#emit-profile)
        (enable-inline-files . chicken.compiler.core#enable-inline-files)
        (explicit-use-flag . chicken.compiler.core#explicit-use-flag)
        (first-analysis . chicken.compiler.core#first-analysis)
        (no-bound-checks . chicken.compiler.core#no-bound-checks)
        (compile-module-registration
          .
          chicken.compiler.core#compile-module-registration)
        (optimize-leaf-routines . chicken.compiler.core#optimize-leaf-routines)
        (standalone-executable . chicken.compiler.core#standalone-executable)
        (undefine-shadowed-macros
          .
          chicken.compiler.core#undefine-shadowed-macros)
        (verbose-mode . chicken.compiler.core#verbose-mode)
        (local-definitions . chicken.compiler.core#local-definitions)
        (enable-specialization . chicken.compiler.core#enable-specialization)
        (block-compilation . chicken.compiler.core#block-compilation)
        (inline-locally . chicken.compiler.core#inline-locally)
        (inline-substitutions-enabled
          .
          chicken.compiler.core#inline-substitutions-enabled)
        (strict-variable-types . chicken.compiler.core#strict-variable-types)
        (static-extensions . chicken.compiler.core#static-extensions)
        (emit-link-file . chicken.compiler.core#emit-link-file)
        (types-output-file . chicken.compiler.core#types-output-file)
        (disable-stack-overflow-checking
          .
          chicken.compiler.core#disable-stack-overflow-checking)
        (emit-trace-info . chicken.compiler.core#emit-trace-info)
        (external-protos-first . chicken.compiler.core#external-protos-first)
        (external-variables . chicken.compiler.core#external-variables)
        (insert-timer-checks . chicken.compiler.core#insert-timer-checks)
        (no-argc-checks . chicken.compiler.core#no-argc-checks)
        (no-global-procedure-checks
          .
          chicken.compiler.core#no-global-procedure-checks)
        (no-procedure-checks . chicken.compiler.core#no-procedure-checks)
        (emit-debug-info . chicken.compiler.core#emit-debug-info)
        (profiled-procedures . chicken.compiler.core#profiled-procedures)
        (import-libraries . chicken.compiler.core#import-libraries)
        (inline-max-size . chicken.compiler.core#inline-max-size)
        (unroll-limit . chicken.compiler.core#unroll-limit)
        (extended-bindings . chicken.compiler.core#extended-bindings)
        (standard-bindings . chicken.compiler.core#standard-bindings)
        (required-libraries . chicken.compiler.core#required-libraries)
        (linked-libraries . chicken.compiler.core#linked-libraries)
        (used-libraries . chicken.compiler.core#used-libraries)
        (target-heap-size . chicken.compiler.core#target-heap-size)
        (target-stack-size . chicken.compiler.core#target-stack-size)
        (unit-name . chicken.compiler.core#unit-name)
        (used-units . chicken.compiler.core#used-units)
        (default-extended-bindings
          .
          chicken.compiler.core#default-extended-bindings)
        (default-standard-bindings
          .
          chicken.compiler.core#default-standard-bindings)
        (internal-bindings . chicken.compiler.core#internal-bindings)
        (foreign-declarations . chicken.compiler.core#foreign-declarations)
        (foreign-lambda-stubs . chicken.compiler.core#foreign-lambda-stubs)
        (foreign-stub-argument-types
          .
          chicken.compiler.core#foreign-stub-argument-types)
        (foreign-stub-argument-names
          .
          chicken.compiler.core#foreign-stub-argument-names)
        (foreign-stub-body . chicken.compiler.core#foreign-stub-body)
        (foreign-stub-callback . chicken.compiler.core#foreign-stub-callback)
        (foreign-stub-cps . chicken.compiler.core#foreign-stub-cps)
        (foreign-stub-id . chicken.compiler.core#foreign-stub-id)
        (foreign-stub-name . chicken.compiler.core#foreign-stub-name)
        (foreign-stub-return-type
          .
          chicken.compiler.core#foreign-stub-return-type)
        (lambda-literal-id . chicken.compiler.core#lambda-literal-id)
        (lambda-literal-external
          .
          chicken.compiler.core#lambda-literal-external)
        (lambda-literal-argument-count
          .
          chicken.compiler.core#lambda-literal-argument-count)
        (lambda-literal-rest-argument
          .
          chicken.compiler.core#lambda-literal-rest-argument)
        (lambda-literal-rest-argument-mode
          .
          chicken.compiler.core#lambda-literal-rest-argument-mode)
        (lambda-literal-temporaries
          .
          chicken.compiler.core#lambda-literal-temporaries)
        (lambda-literal-float-temporaries
          .
          chicken.compiler.core#lambda-literal-float-temporaries)
        (lambda-literal-callee-signatures
          .
          chicken.compiler.core#lambda-literal-callee-signatures)
        (lambda-literal-allocated
          .
          chicken.compiler.core#lambda-literal-allocated)
        (lambda-literal-closure-size
          .
          chicken.compiler.core#lambda-literal-closure-size)
        (lambda-literal-looping . chicken.compiler.core#lambda-literal-looping)
        (lambda-literal-customizable
          .
          chicken.compiler.core#lambda-literal-customizable)
        (lambda-literal-body . chicken.compiler.core#lambda-literal-body)
        (lambda-literal-direct . chicken.compiler.core#lambda-literal-direct)
        (constant-table . chicken.compiler.core#constant-table)
        (immutable-constants . chicken.compiler.core#immutable-constants)
        (inline-table . chicken.compiler.core#inline-table)
        (line-number-database-2 . chicken.compiler.core#line-number-database-2)
        (line-number-database-size
          .
          chicken.compiler.core#line-number-database-size))
      (scheme#list)
      (scheme#list))))

;; END OF FILE
