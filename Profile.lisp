;;
;;
;;            Profile loader
;;
;;                       by Mikhail Malt   &   Jacopo Baboni Schilingi  © IRCAM 1994
           
  
(in-package :cl-user)

(defpackage "Profile"
  (:nicknames :prf) 
  (:use "COMMON-LISP" "CL-USER" "OpenMusic"))

(om::compile&load (om::om-relative-path '("sources") "package"))
(om::compile&load (om::om-relative-path '("sources") "profile"))

(om::set-lib-release 2.2)

;--------------------------------------------------
; OM subpackages initialization
; ("sub-pack-name" subpacke-lists class-list function-list class-alias-list)
;--------------------------------------------------
(om::fill-library 
	'(("Perturbation" nil nil (prf::alea-pertb prf::compr/expan) nil)
      ("Change" nil nil (prf::control-pertb prf::prof-change) nil)
   	  ("Reflexions" nil nil (prf::reflexion prf::double-reflect prf::multi-reflect) nil)
      ("Deriv/Integr" nil nil (prf::mean-derivation prf::pr-interlock prf::derivation prf::integration) nil)
      ("Interpolation" nil nil (prf::inter-dyn prf::multi-interpol prf::interpol-prof) nil)
      ("Utilities" nil nil (prf::range-approx prf::notes-change prf::weight-average prf::pr-group-list prf::subst-list 
      	                                     prf::interpol-tab prf::bpf-interpolx) nil)))


