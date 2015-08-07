;;; init.el --- dotemacs -*- lexical-binding: t -*-

;; Copyright (C) 2015  Todd Mokros

;; Author: Todd Mokros <tmokros@tmokros.net>
;; URL: https://github.com/tmokros/dotemacs

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; My dotemacs setup

;;; Code:


(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'noerror)

(server-start)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (el-get-elpa-build-local-recipes))


(setq el-get-user-package-directory "~/.emacs.d/el-get-init")

(setq mok/el-get-packages '(async
                            ;; git:
                            magit gist
                            ;; python:
                            jedi pymacs ropemacs virtualenv feature-mode elpy
                            ;; completion:
                            auto-complete helm
                            ;; misc:
                            bbdb htmlize mmm-mode gnus org-mode
                            ;; lisp:
                            slime))

;; Required python packages: jedi rope?

(el-get 'sync mok/el-get-packages)

(add-to-list 'el-get-info-paths-to-add "/.emacs.d/el-get/el-get")

(setq custom-theme-directory "~/.emacs.d/themes/")

(setq-default indent-tabs-mode nil
              tab-width 4)





