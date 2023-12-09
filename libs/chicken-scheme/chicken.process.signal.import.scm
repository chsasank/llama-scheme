;;;; chicken.process.signal.import.scm - GENERATED BY CHICKEN 5.3.0rc4 -*- Scheme -*-

(##sys#with-environment
  (lambda ()
    (##sys#register-compiled-module
      'chicken.process.signal
      'posix
      (scheme#list)
      '((set-alarm! . chicken.process.signal#set-alarm!)
        (set-signal-handler! . chicken.process.signal#set-signal-handler!)
        (set-signal-mask! . chicken.process.signal#set-signal-mask!)
        (signal-handler . chicken.process.signal#signal-handler)
        (signal-mask . chicken.process.signal#signal-mask)
        (signal-mask! . chicken.process.signal#signal-mask!)
        (signal-masked? . chicken.process.signal#signal-masked?)
        (signal-unmask! . chicken.process.signal#signal-unmask!)
        (signal/abrt . chicken.process.signal#signal/abrt)
        (signal/alrm . chicken.process.signal#signal/alrm)
        (signal/break . chicken.process.signal#signal/break)
        (signal/bus . chicken.process.signal#signal/bus)
        (signal/chld . chicken.process.signal#signal/chld)
        (signal/cont . chicken.process.signal#signal/cont)
        (signal/fpe . chicken.process.signal#signal/fpe)
        (signal/hup . chicken.process.signal#signal/hup)
        (signal/ill . chicken.process.signal#signal/ill)
        (signal/int . chicken.process.signal#signal/int)
        (signal/io . chicken.process.signal#signal/io)
        (signal/kill . chicken.process.signal#signal/kill)
        (signal/pipe . chicken.process.signal#signal/pipe)
        (signal/prof . chicken.process.signal#signal/prof)
        (signal/quit . chicken.process.signal#signal/quit)
        (signal/segv . chicken.process.signal#signal/segv)
        (signal/stop . chicken.process.signal#signal/stop)
        (signal/term . chicken.process.signal#signal/term)
        (signal/trap . chicken.process.signal#signal/trap)
        (signal/tstp . chicken.process.signal#signal/tstp)
        (signal/urg . chicken.process.signal#signal/urg)
        (signal/usr1 . chicken.process.signal#signal/usr1)
        (signal/usr2 . chicken.process.signal#signal/usr2)
        (signal/vtalrm . chicken.process.signal#signal/vtalrm)
        (signal/winch . chicken.process.signal#signal/winch)
        (signal/xcpu . chicken.process.signal#signal/xcpu)
        (signal/xfsz . chicken.process.signal#signal/xfsz)
        (signals-list . chicken.process.signal#signals-list))
      (scheme#list)
      (scheme#list))))

;; END OF FILE