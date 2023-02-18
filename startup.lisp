(in-package :stumpwm)

(uiop:launch-program "hsetroot -fill \"/home/hamza/pix/walls/quote-wall.jpg\"")
(uiop:launch-program "picom")

(setf *startup-message*
  "^(:fg \"#ebdbb2\")Welcome to ^(:fg 4)^BH^(:fg \"#83a598\")amza's ^(:fg 4)^BPC ^(:fg \"#ebdbb2\")and ^B^(:fg 3)^BStump^b ^BW^bindow ^BM^banager^(:fg \"#ebdbb2\")!
^b^(:fg \"#ebdbb2\")For help, press ^(:fg \"#d3869b\")~a ?")
(message *startup-message* (print-key *escape-key*))


;; (uiop:launch-program "date --set='+3 minutes 36.1 seconds'")
(uiop:launch-program "emacsclient -c -a ''")
(uiop:launch-program "firefox")
(uiop:launch-program "element-desktop")
(uiop:launch-program "keepassxc")

(slynk-start-server 1234)

(run-with-timer 15 nil
  (lambda () (setf *update-session-p* t)))
