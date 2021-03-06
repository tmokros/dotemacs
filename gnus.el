(setq gnus-select-method '(nntp "news.gmane.org"
                                (nntp-open-connection-function nntp-open-tls-stream)
                                (nntp-port-number 563)
                                (nntp-address "news.gmane.org")))
(setq mm-discouraged-alternatives '("text/html" "text/richtext"))
(setq gnus-summary-line-format "%O%U%R%z%&user-date; %(%[%-22,22f%]%)%4t:%B %S\n")
(setq gnus-summary-mode-line-format "Gnus: %p [%A / Sc:%4z] %Z")

(setq gnus-summary-same-subject "")
(setq gnus-sum-thread-tree-root "")
(setq gnus-sum-thread-tree-false-root "")
(setq gnus-sum-thread-tree-single-indent "")
(setq gnus-sum-thread-tree-leaf-with-other "├ ")
(setq gnus-sum-thread-tree-vertical "│")
(setq gnus-sum-thread-tree-single-leaf "└ ")
(setq gnus-sum-thread-tree-indent " ")
(setq gnus-user-date-format-alist '((t . "%Y-%m-%d")))
(setq gnus-summary-prepared-hook (quote (gnus-summary-hide-all-threads)))
(setq gnus-group-mode-hook '(gnus-agent-mode gnus-topic-mode))
(setq gnus-large-newsgroup 1000)

(spam-initialize)
