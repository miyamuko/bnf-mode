; -*- Mode: Lisp; Package: editor -*-

#|
= bnf-mode - BNF �t�@�C����ҏW�����肷��

* Author:  MIYAMUKO Katsuyuki ((<URL:mailto:miyamuko@gmail.com>))
* URL: ((<URL:http://miyamuko.s56.xrea.com/xyzzy/bnf-mode/intro.htm>))
* Version: $Id: bnf-mode.l,v 1.9 2004/08/09 14:03:01 miyamuko Exp $


== ����

BNF ��ǂ݂��߂ɍ�������[�h�ł��B�������Ƃ͂��܂�l�����Ă��܂���B

* ABNF(Augmented BNF) �� EBNF(Extended BNF) �ɑ�̑Ή�
* �K���ȃC���f���g
* �K���ȐF�Â�
* ���[�����̃^�O�W�����v


== �C���X�g�[��

((<NetInstaller|URL:http://www.mirai.ne.jp/~gyo/xyzzy/ni.html>)) �ŃC���X�g�[�������ꍇ�� 3 �ȍ~���A
NetInstaller + (({ni-autoload})) ���g���Ă���l�� 4 �ȍ~�� OK �ł��B

(1) �A�[�J�C�u���_�E�����[�h���܂��B

    ((<URL:http://miyamuko.s56.xrea.com/xyzzy/archives/bnf-mode.zip>))

(2) �A�[�J�C�u��W�J���āA$XYZZY/site-lisp �z���Ƀt�@�C�����R�s�[���܂��B

(3) �g���q�� bnf�Aabnf�Aebnf �̃t�@�C�����J�����Ƃ��Ɏ����I�� bnf-mode �ɂȂ�悤��
    ~/.xyzzy �܂��� $XYZZY/site-lisp/siteinit.l �Ɉȉ��̃R�[�h��ǉ����܂��B

        ;; bnf-mode
        (require "bnf-mode")
        (pushnew '("\\.[ae]?bnf$" . bnf-mode) *auto-mode-alist* :test 'equal)

(4) �ݒ�𔽉f�����邽�� xyzzy ���ċN�����Ă��������B

    ��siteinit.l �ɋL�q�����ꍇ�ɂ͍ă_���v���K�v�ł��B


== ���t�@�����X

=== �L�[���蓖��

: ((%TAB%))
    �C���f���g���܂��B

    * ���[�����p�����镶��������ΑO�̍s�ƃC���f���g�����낦�܂��B
    * ���[�����p�����镶�����Ȃ��ꍇ�A�ʏ�C���f���g���܂���B
    * �ʏ�C���f���g���Ȃ��s�ł��s���ɃX�y�[�X���ꕶ���ȏ゠��΃C���f���g���܂��B

    ���[���𕡐��s�ɂ킽���ď����ꍇ�͎��̂悤�ɃC���f���g���܂��B

        TypeDeclaration = ClassDeclaration /
                          InterfaceDeclaration
                          / ";"

    ���[�����̒���ŉ��s�����ꍇ�͎��̂悤�ɃC���f���g���܂��B
    ((({*bnf-indent-level*})) �� 2 �̏ꍇ)

        declaration-specifiers:
          (storage-class-specifier | type-specifier
          | type-qualifier)+

: ((%RET%))
    ���s�{�C���f���g�t���B

=== �ϐ�

--- *bnf-indent-level*

�C���f���g�̕���ݒ肵�܂��B(���}�� _ ����, �f�t�H���g 2)

    rule_name:
    __element

�C���f���g�̐[���� 4 �J�����ɕύX����ꍇ�B

    ;; �C���f���g�� 4
    (setq *bnf-indent-level* 4)

--- *bnf-rule-separator-regexp*

���[���̃Z�p���[�^�̃p�^�[����ݒ肵�܂��B(�f�t�H���g�� (::= or : or = or =/))

    ;; �Z�p���[�^���R�����݂̂ɐݒ�
    (setq *bnf-rule-separator-regexp* ":")


== ���ꂩ���邩������Ȃ�����

(1) ���[�����̋�؂蕶���̃C���f���g��O�̃��[���Ƃ��킹��B

        rule_name1    = foo ; �ŏ��͎�ŃC���f���g�B
        rule_name2    = bar ; �����͎����I�ɑO�̍s�ɂ��킹��B
        loooooooong_rule_name1 = baz ; ����͂��傤���Ȃ��B
        rule_name3 = hoge ; �������߂�B

(2) �ւȂ��傱�Ȃ̂ŕ��u


== �֘A���邩������Ȃ��y�[�W

: RFC2234 - Augmented BNF for Syntax Specifications: ABNF
    ((<URL:http://www.ietf.org/rfc/rfc2234.txt>))


== ���C�Z���X

bnf-mode �͏C�� BSD ���C�Z���X�Ɋ�Â��ė��p�\�ł��B

  Copyright (C) 2003-2004 MIYAMUKO Katsuyuki. All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:

  1 Redistributions of source code must retain the above copyright notice,
  this list of conditions and the following disclaimer as the first lines
  of this file unmodified.

  2 Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.

  THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  SUCH DAMAGE.
|#

(provide "bnf-mode")
(in-package "editor")

(export '(*bnf-mode-hook*
          *bnf-mode-map*
          *bnf-indent-level*
          *bnf-rule-separator-regexp*
          bnf-mode
          ))


; �t�b�N
(defvar *bnf-mode-hook* nil
  "bnf-mode: �t�b�N�ϐ�")

; configurable
(defvar *bnf-comment-column* nil)
(defvar *bnf-rule-separator-regexp* "\\(:\\|=/?\\|::=\\)"
  "bnf-mode: rule �� element �̋�؂蕶��: ABNF �� = or =/, BNF �� ::=, yacc �� : ")
(defvar *bnf-indent-level* 2
  "bnf-mode: element �̃C���f���g��")

(defvar *bnf-rule-name-regexp* "^[a-zA-Z][a-zA-Z0-9_-]*"
  "rule name �̐��K�\��")

; regexp keyword
(defvar bnf-regexp-keyword nil
  "���K�\���L�[���[�h")

; color
(defvar *bnf-rule-name-color* '(:keyword 0))
(defvar *bnf-option-element-color* '(:keyword 1))
(defvar *bnf-ref-element-color* '(:keyword 2))
(setf *bnf-regexp-keyword*
  (compile-regexp-keyword-list
   `(
     ;; rule name
     (,*bnf-rule-name-regexp* t ((0 . ,*bnf-rule-name-color*)))
     ;; option
     ("\\[[^]]+\\]" t ((0 . ,*bnf-option-element-color*)))
     ;; ref
     ("<[^>]+>" t ((0 . ,*bnf-ref-element-color*)))
     )))


; �V���^�b�N�X�e�[�u��
(defvar *bnf-mode-syntax-table* nil)
(unless *bnf-mode-syntax-table*
  (setf *bnf-mode-syntax-table* (make-syntax-table))
  (do ((x #x21 (1+ x)))((>= x #x7f))
    (let ((c (code-char x)))
      (unless (alphanumericp c)
        (set-syntax-punctuation *bnf-mode-syntax-table* c))))
  ; �ȉ�mode�ɍ��킹�Đݒ�
  (set-syntax-word *bnf-mode-syntax-table* #\_)
  (set-syntax-word *bnf-mode-syntax-table* #\-)
  (set-syntax-string *bnf-mode-syntax-table* #\")
  (set-syntax-match *bnf-mode-syntax-table* #\( #\)) ; �Ή�����()�ɔ��
  (set-syntax-match *bnf-mode-syntax-table* #\< #\>)
  (set-syntax-match *bnf-mode-syntax-table* #\[ #\])
  (set-syntax-start-comment *bnf-mode-syntax-table* #\;)
  (set-syntax-end-comment *bnf-mode-syntax-table* #\LFD)
  )

; �L�[�}�b�v
(defvar *bnf-mode-map* nil)
(unless *bnf-mode-map*
  (setf *bnf-mode-map* (make-sparse-keymap))
  ; �ȉ��L�[����
  (define-key *bnf-mode-map* #\| 'bnf-electric-insert)
  (define-key *bnf-mode-map* #\/ 'bnf-electric-insert)
  (define-key *bnf-mode-map* #\( 'bnf-electric-insert)
  (define-key *bnf-mode-map* #\) 'bnf-electric-close)
  (define-key *bnf-mode-map* #\C-h 'backward-delete-char-untabify-or-selection)
  (define-key *bnf-mode-map* #\TAB 'bnf-indent-line)
  (define-key *bnf-mode-map* #\C-M-q 'indent-sexp)
  (define-key *bnf-mode-map* #\RET 'bnf-newline-and-indent)
  )

(defun bnf-electric-insert (&optional (arg 1))
  (interactive "*p")
  (self-insert-command arg)
  (bnf-indent-line))

(defun bnf-electric-close (&optional (arg 1))
  (interactive "*p")
  (self-insert-command arg)
  (bnf-indent-line)
  (save-excursion
    (forward-char -1)
    (and (goto-matched-parenthesis)
         (show-matched-parenthesis)))
  t)

(defun bnf-newline-and-indent (&optional (arg 1))
  (interactive "*p")
  (delete-trailing-spaces)
  (insert #\LFD arg)
  (bnf-indent-line))

; from c-indent-line
(defun bnf-indent-line ()
  (interactive "*")
  (let ((column (calc-bnf-indent)))
    (when (integerp column)
      (smart-indentation column)))
  t)

(defun bnf-previous-line ()
  "��s����Ȃ��s�܂Ŗ߂�"
  (while (forward-line -1)
    (unless (or (bnf-space-line) (bnf-comment-line))
      (return-from bnf-previous-line t))))

(defun bnf-space-line ()
  "��s���ǂ����i���Ă�������Ē��ׂ���̂Ȃ̂��H�j"
  (save-excursion
    (goto-bol)
    (looking-at "[ \t]*$")))

(defun bnf-comment-line ()
  "�R�����g���ǂ���"
  (save-excursion
    (goto-bol)
    (looking-at "^[ \t]*;")))

(defun calc-bnf-indent ()
  "�C���f���g���鐔�𐔂���"
  (let ((column 0) (prev-column 0))
    (save-excursion
      ;�O�̍s�𒲂ׂ�
      (when (bnf-previous-line)
        (save-restriction
          (narrow-to-region (progn (goto-eol) (point))
                            (progn (goto-bol) (point)))
          (goto-bol)
          (skip-chars-forward " \t")
          (setf prev-column (current-column))

          ; element �̃C���f���g���R�s�[���Ă���
          (when (scan-buffer (concat *bnf-rule-name-regexp* "[ \t]*"
                                     *bnf-rule-separator-regexp* "[ \t]*") :regexp t :tail t)
            ; rule name �ƃf���~�^ �݂̂Ȃ� + *bnf-indent-level*
            (if (eolp)
                (setf column *bnf-indent-level*)
              (setf prev-column (current-column))))

          ; �s���Ɍp�����镶��������ꍇ�̓C���f���g����
          (when (scan-buffer "[|/(][ \t]*$" :regexp t)
            (setf column prev-column))
          )))
    ; ���݂̍s�𒲂ׂ�
    (save-excursion
      (goto-bol)
      (skip-chars-forward " \t")
      (cond
       ; �s���� | / ( ) [ ] < > " �Ȃ�O�̍s�̃C���f���g���R�s�[
       ((looking-at "[][|/()<>\"]")
        (setf column prev-column))
       ; ��p���s�����Ǎs���� SPC ������΃C���f���g���Ă�����
       ((and (equal column 0) (not (bolp)))
        (setf column prev-column))
       ))
    column
    ))


; rule name �̈ꗗ
(defun bnf-build-summary-of-functions ()
  (let ((result nil))
    (save-excursion
      (goto-char (point-min))
      (while (scan-buffer (concat "\\(" *bnf-rule-name-regexp* "\\)")
                          :regexp t :tail t)
        (push (list (current-line-number) (match-string 1)) result)))
    (nreverse result)
  ))

; tag
(pushnew '(bnf-maketags "*.bnf" "*.ebnf" "*.abnf") *maketags-list* :key #'car)

(defun tags-find-bnf-point (class name functionp point)
  (goto-char (- point *jump-tag-limit*))
  (and (scan-buffer (concat "^"
                            (regexp-quote name)
                            "[ \t]*"
                            *bnf-rule-separator-regexp*)
                    :regexp t :limit (+ point *jump-tag-limit*))
       (point)))

; XTAGS �t�@�C���̍쐬�֐�
;; ^rule_name [:=] elements
(defun bnf-maketags (file count)
  (goto-char (point-min))
  (while (scan-buffer *bnf-rule-name-regexp* :regexp t :case-fold t)
    (do-events)
    (let ((opoint (point)))
      (skip-chars-forward "a-zA-Z0-9_-")
      (unless (= opoint (point))
        (format t "~A~A~D" (buffer-substring opoint (point)) file opoint)
        (setf count (1+ count)))))
  count)

; mode�̎��s
(defun bnf-mode ()
  "bnf-mode"
  (interactive)
  (kill-all-local-variables)
  (setf mode-name "BNF") ; modeline�ɕ\������閼�O�Bmode�ƈႤ���O�ł���
  (setf buffer-mode 'bnf-mode)
  (use-syntax-table *bnf-mode-syntax-table*)
  (use-keymap *bnf-mode-map*)

  ; paragraph
  (make-local-variable 'paragraph-start)
  (setf paragraph-start "^$\\|\f") ; forward|backward-paragraph �ňړ�����i���ʒu
  (make-local-variable 'paragraph-separate)
  (setf paragraph-separate paragraph-start)

  ; �^�O�֘A
  (make-local-variable 'tags-find-target)
  (setf tags-find-target #'tags-find-target-simple)
  (make-local-variable 'tags-find-point)
  (setf tags-find-point #'tags-find-bnf-point)

  ; list of rule name
  (make-local-variable 'build-summary-function)
  (setf build-summary-function 'bnf-build-summary-of-functions)

  ; indent
  (make-local-variable 'mode-specific-indent-command)
  (setf mode-specific-indent-command 'bnf-indent-line)
  (make-local-variable 'mode-newline-and-indent-command)
  (setf mode-newline-and-indent-command 'bnf-newline-and-indent)

  ; comment
  (setf comment-start "; " comment-end "") ; indent-for-comment�ő}�������z
  (setf comment-start-skip ";+[ \t]*")
  (setf comment-indent-function 'calc-bnf-indent)
  (when *bnf-comment-column*
    (setf comment-column *bnf-comment-column*))

  ; keyword
  (make-local-variable 'regexp-keyword-list)
  (setf regexp-keyword-list *bnf-regexp-keyword*)

  ; �t�b�N�̎��s
  (run-hooks '*bnf-mode-hook*))