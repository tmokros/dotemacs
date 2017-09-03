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


(server-start)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("elpy" . "https://jorgenschaefer.github.io/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'noerror)

(setq gnus-init-file "~/.emacs.d/gnus")

(use-package magit
  :bind ("C-c m" . magit-status)
  :demand)
(use-package gist)
(use-package pymacs
  ; :config (pymacs-load "ropemacs" "rope-")
  )
;(use-package ropemacs)
(use-package feature-mode)
(use-package elpy)
(use-package jedi
  :init
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:setup-keys t)
  (setq jedi:complete-on-dot t))
(use-package company :demand)
(use-package company-jedi)
(use-package helm
  :config
  (helm-mode 1)
  :demand)
(use-package bbdb)
(use-package htmlize)
(use-package mmm-mode)
(use-package org)
(use-package slime)


(setq custom-theme-directory "~/.emacs.d/themes/")

(setq-default indent-tabs-mode nil
              tab-width 4)

(setq gnus-init-file "~/.emacs.d/gnus")





