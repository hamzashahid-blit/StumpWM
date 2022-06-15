;;;; Keybindings 
(in-package :stumpwm)

(set-prefix-key (kbd "C-;"))
     
;; Run Command; Since "C-; ;" was overrided
(define-key *root-map* (kbd "C-z") "colon")
(define-key *root-map* (kbd "C-e") "launch \"emacsclient -c -a ''\"")
(define-key *root-map* (kbd "c") "launch kitty") ;; Terminal

;; ;; Replace "select-window" (C-') (for some reason showing as C->) with Rofi
;; (undefine-key *root-map* (kbd "C-'"))
;; (define-key *root-map* (kbd "C-'") "launch \"rofi -show window\"")
;; (define-key *root-map* (kbd "C-M->") "select-window")

(undefine-key *root-map* (kbd "w"))
(define-key *root-map* (kbd "w") "launch \"rofi -show window\"")

;; Replace running programs with Rofi
(undefine-key *root-map* (kbd "x"))
(define-key *root-map* (kbd "x") "launch \"rofi -show run\"")
(define-key *root-map* (kbd "C-x") *exchange-window-map*)
(define-key *root-map* (kbd "C-M-x") "exec")

;; Groups
(undefine-key *root-map* (kbd "1"))
(undefine-key *root-map* (kbd "2"))
(undefine-key *root-map* (kbd "3"))
(undefine-key *root-map* (kbd "4"))
(undefine-key *root-map* (kbd "5"))
(undefine-key *root-map* (kbd "6"))
(undefine-key *root-map* (kbd "7"))
(undefine-key *root-map* (kbd "8"))
(undefine-key *root-map* (kbd "0"))

(define-key *root-map* (kbd "1") "gselect 1")
(define-key *root-map* (kbd "2") "gselect 2")
(define-key *root-map* (kbd "3") "gselect 3")
(define-key *root-map* (kbd "4") "gselect 4")
(define-key *root-map* (kbd "5") "gselect 5")
(define-key *root-map* (kbd "6") "gselect 6")
(define-key *root-map* (kbd "7") "gselect 7")
(define-key *root-map* (kbd "8") "gselect 8")
(define-key *root-map* (kbd "0") "gselect 9")

;; Windows

;; C-h, C-j, C-k, C-l = Move between frames
;; h, l = Move between Groups
;; k, l = Move between windows in frame
(undefine-key *root-map* (kbd "k")) ;; Old kill
(define-key *root-map* (kbd "j") "pull-hidden-next")
(define-key *root-map* (kbd "k") "pull-hidden-previous")

(undefine-key *root-map* (kbd "h")) ;; Old help-map
(undefine-key *root-map* (kbd "l")) ;; Old redisplay
(define-key *root-map* (kbd "h") "gprev")
(define-key *root-map* (kbd "l") "gnext")

;; Help map = H
;; quick help = ?, C-h
(undefine-key *root-map* (kbd "C-h")) ;; Old keybindings show like '?'
(define-key *root-map* (kbd "H") *help-map*)
(undefine-key *root-map* (kbd "C-l")) ;; Old redisplay
(define-key *root-map* (kbd "L") "redisplay")
(undefine-key *root-map* (kbd "C-k")) ;; Old delete
(define-key *root-map* (kbd "d") "delete")
(define-key *root-map* (kbd "C-d") "kill")

;; (define-key *root-map* (kbd "C-h") "move-focus-left")
(define-key *root-map* (kbd "C-j") "move-focus down")
(define-key *root-map* (kbd "C-k") "move-focus up")
(define-key *root-map* (kbd "C-l") "move-focus right")

;; Extra
;; (undefine-key *root-map* (kbd "b")) ;; Old ???? whatkwlasjdflsf
;; (define-key *root-map* (kbd "b") "mode-line")
(define-key *groups-map* (kbd "G") "toggle-gaps")
