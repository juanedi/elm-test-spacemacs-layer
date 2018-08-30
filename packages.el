;;; packages.el --- elm-test layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Juan Edi <jedi@chappie.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst elm-test-packages
  '(
    elm-test-runner
    )
  )

(defun elm-test/init-elm-test-runner ()
  (use-package elm-test-runner
    :after elm-mode
    :init
    (progn
      (spacemacs/declare-prefix-for-mode 'elm-mode "mt" "elm/test")
      (spacemacs/set-leader-keys-for-major-mode 'elm-mode
        "tb" 'elm-test-runner-run
        "td" 'elm-test-runner-run-directory
        "tp" 'elm-test-runner-run-project
        "tr" 'elm-test-runner-rerun
        "tw" 'elm-test-runner-watch
        "t TAB" 'elm-test-runner-toggle-test-and-target
        ))))

;;; packages.el ends here
