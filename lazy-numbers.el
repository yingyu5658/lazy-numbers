;;; lazy-numbers.el --- Enter numbers without moving your hands off the home row -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Verdant

;; Author: Verdant <verdant.im@outlook.com>
;; Version: 0.1
;; Package-Requires: ((emacs "27.1"))
;; Keywords: convenience, tools, lazy
;; URL: https://github.com/yingyu5658/lazy-numbers.el
;; SPDX-License-Identifier: MIT

;;; Commentary:
;; Use `C-'` and home row keys to enter numbers

;;; Code:

(defvar lazy-numbers-transient-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "a") (lambda () (interactive) (insert "1") (forward-char 1)))
    (define-key map (kbd "s") (lambda () (interactive) (insert "2") (forward-char 1)))
    (define-key map (kbd "d") (lambda () (interactive) (insert "3") (forward-char 1)))
    (define-key map (kbd "f") (lambda () (interactive) (insert "4") (forward-char 1)))
    (define-key map (kbd "g") (lambda () (interactive) (insert "5") (forward-char 1)))
    (define-key map (kbd "h") (lambda () (interactive) (insert "6") (forward-char 1)))
    (define-key map (kbd "j") (lambda () (interactive) (insert "7") (forward-char 1)))
    (define-key map (kbd "k") (lambda () (interactive) (insert "8") (forward-char 1)))
    (define-key map (kbd "l") (lambda () (interactive) (insert "9") (forward-char 1)))
    (define-key map (kbd ";") (lambda () (interactive) (insert "0") (forward-char 1)))

    map)
  "Key map for SPC number input.")

;;;###autoload
(defun lazy-numbers-enter ()
  "Enter transient number input mode."
  (interactive)
  (set-transient-map lazy-numbers-transient-map t))

(provide 'lazy-numbers)

;;; lazy-numbers.el ends here
