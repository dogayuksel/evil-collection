;;; evil-collection-bufler.el --- Evil bindings for Bufler -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: Doga Yuksel <hello@doga.dev>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <mail@ambrevar.xyz>
;; URL: https://github.com/emacs-evil/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, Bufler, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil bindings for Bufler.

;;; Code:
(require 'evil-collection)
(require 'bufler)
(require 'magit-section)

(defconst evil-collection-bufler-maps '(bufler-list-mode-map))

;;;###autoload
(defun evil-collection-bufler-setup ()
  "Set up `evil' bindings for `Bufler'."
  (evil-set-initial-state 'bufler-list-mode 'normal)

  (evil-collection-define-key 'normal 'bufler-list-mode-map
    "g?" 'hydra:bufler/body
    "gr" 'bufler
    "gf" 'bufler-list-group-frame
    "gF" 'bufler-list-group-make-frame
    "gN" 'bufler-list-buffer-name-workspace

    "x" 'bufler-list-buffer-kill
    "s" 'bufler-list-buffer-save
    (kbd "RET") 'bufler-list-buffer-switch
    "go" 'bufler-list-buffer-peek

    (kbd "g TAB") 'magit-section-toggle

    ;; Quit
    "q" 'quit-window
    "ZZ" 'quit-window
    "ZQ" 'quit-window))

(provide 'evil-collection-bufler)
;;; evil-collection-bufler.el ends here
