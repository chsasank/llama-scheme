;;;; chicken.process-context.posix.import.scm - GENERATED BY CHICKEN 5.3.0rc4 -*- Scheme -*-

(##sys#with-environment
  (lambda ()
    (##sys#register-compiled-module
      'chicken.process-context.posix
      'posix
      (scheme#list)
      '((change-directory* . chicken.process-context.posix#change-directory*)
        (set-root-directory!
          .
          chicken.process-context.posix#set-root-directory!)
        (current-effective-group-id
          .
          chicken.process-context.posix#current-effective-group-id)
        (current-effective-user-id
          .
          chicken.process-context.posix#current-effective-user-id)
        (current-process-id . chicken.process-context.posix#current-process-id)
        (current-group-id . chicken.process-context.posix#current-group-id)
        (current-user-id . chicken.process-context.posix#current-user-id)
        (parent-process-id . chicken.process-context.posix#parent-process-id)
        (current-user-name . chicken.process-context.posix#current-user-name)
        (current-effective-user-name
          .
          chicken.process-context.posix#current-effective-user-name)
        (create-session . chicken.process-context.posix#create-session)
        (process-group-id . chicken.process-context.posix#process-group-id)
        (user-information . chicken.process-context.posix#user-information))
      (scheme#list)
      (scheme#list))))

;; END OF FILE
