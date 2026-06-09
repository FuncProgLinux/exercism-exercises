(defpackage :pizza-pi
  (:use :cl)
  (:export :dough-calculator :pizzas-per-cube
           :size-from-sauce :fair-share-p))

(in-package :pizza-pi)

(defun dough-calculator (pizzas diameter)
  "Return required grams of dough needed for a pizza."
  (round (* pizzas (+ 200 (/ (* 45 pi diameter) 20)))))

(defun size-from-sauce (sauce)
  "Return the required sauce"
  (sqrt (/ (* 40 sauce) (* 3 pi))))

(defun pizzas-per-cube (cube-size diameter)
  "Return the amount of pizzas per cheese cube."
  (floor (/ (* 2 (expt cube-size 3)) (* 3 pi (expt diameter 2)))))

(defun fair-share-p (pizzas friends)
  "Return T if a given amount of PIZZAS is distributed evenly among FRIENDS."
  (= 0 (mod (* 8 pizzas) friends)))
