;;;; 2008-04-15 10:44:05
;;;; Behold, the power of lisp.

(in-package :common-lisp-user)


(setf cl-kb:*kb-default-path* "/home/serra/Software/Developing/MaLeCoLi/runtime_ws/kbs/")
(push cl-kb:*kb-default-path* cl-kb:*kb-paths*)

(setf clone-cbr::*tmp-directory* (pathname-directory #p"/home/serra/Software/Developing/MaLeCoLi/runtime_ws/examples/one/logs/"))

(defvar *default-one-log-pathname*            
  #p"/home/serra/Software/Developing/MaLeCoLi/runtime_ws/examples/one/logs/")

(defun gnilog (name)
  name)

(defvar *models* 
  (list
   (gnilog "5a7ab972-854b-4064-8b8c-ba58fc55914c")
   (gnilog "e2524737-c152-4c43-a391-d4b258aeee02")
   (gnilog "a2af37f0-3e62-427c-bbe0-0826c6053273")))

(defvar *model-instances*)
(setf *model-instances-id*
  (list 
   (gnilog "04493411-377a-4042-916e-262aa8529d0b")
   (gnilog "ba66edcd-3555-482b-a221-3f08b5222a37")
   (gnilog "d0ee4b3a-9e6a-4712-8d2e-4851c88ea03e")
   
   
   ;(gnilog "094e7f90-b2e9-4651-83c1-f1e292c59370")
   (gnilog "118f9e3f-8f0b-40a6-83c2-befedd22c58a")
   (gnilog "1849912c-b70e-4e28-a2ce-ab68acaf28bf")
   (gnilog "1ac6a816-8695-4e9b-8a79-3339d8f53281")
   ;(gnilog "1f03d126-8724-4add-85c4-4575ff03f4ac")
   ;(gnilog "2272c58e-b9ed-4f64-9bcd-e4620a96c2c3")
   ;(gnilog "2432e2d8-3062-4703-8f8f-87cf1c288002")
   ;(gnilog "254ecfd3-5d73-4e0e-b422-ed09adb5ac5e")
   (gnilog "288ea25f-a231-4206-be25-6d9b903d1afd")
   ;(gnilog "3b03188e-e882-4d63-a355-1a7dbf3d227b")
   ;(gnilog "594572a3-9753-407b-8f75-160a540d7438")
   ;(gnilog "5a7ab972-854b-4064-8b8c-ba58fc55914c")
   (gnilog "67ab16cb-216a-4015-b70a-7402ca52527b")
   (gnilog "6c527226-c008-453a-8a89-9973052930cd")
   (gnilog "714a5bf9-26b1-470b-8cbd-de48f2267185")
   ;(gnilog "781abf43-4eb5-46de-bd8e-0b108ec54eef")
   ;(gnilog "7d956f02-6ec9-4798-80ca-841174c7424e")
   ;(gnilog "80359645-322f-44ac-81cc-9f547cb1183d")
   (gnilog "8424c3fe-9121-4f8a-a07c-e4a8395a724b")
   ;(gnilog "87f10b69-9a08-4077-8ed5-2530837e9f9d")
   ;(gnilog "92e70ab8-db36-4283-880a-3ddd92a36404")
   ;(gnilog "97add1a6-2b97-4686-9e7d-2db3a83b84c5")
   (gnilog "9b40b240-4097-4652-a346-34dab846a384")
   (gnilog "a4cd57fc-3f34-42b1-959a-429da40edfaa")
   ;(gnilog "a60cec51-e84b-4790-93b2-aff5e4f98bbd")
   ;(gnilog "a6cd16f5-be3f-4c17-8cc9-d85077fd3636")
   (gnilog "ad039be2-63ea-412f-9ef4-1eba35f0bbd3")
   ;(gnilog "b9c3776b-5f92-4635-8b11-4ab799cdefac")
   ;(gnilog "c0378e45-8cab-4f29-88ca-5ff31b873c80")
   ;(gnilog "c3325105-9145-4946-a90b-0ce4f1837680")
   ;(gnilog "c76ea4bf-d73c-4394-a462-4203c72dfbac")
   (gnilog "d8e32568-ef15-4473-9754-90461b0715ac")
   ;(gnilog "dbb9767a-e350-4d5b-9a3a-5ddbdb7c6405")
   ;(gnilog "dfa9062e-1b2c-43ee-a128-6e37110d05c1")
   (gnilog "e5e3bec6-d1cd-4909-b07e-b911925133e8")
   (gnilog "eba94fd8-593e-425f-9482-ef64bd228620")
   (gnilog "f207bd7a-d0f7-4bb0-b35c-b27020a0cea6")
   ;(gnilog "f4df5d25-c713-404f-814f-1f65415cef56")
   ;(gnilog "fce68abd-45f4-4f06-b47f-43c82f41baab")
   ;(gnilog "ffcba3e8-53e8-4794-80fe-53b09194e8b1")
   ))


(defun test-log-all ()
  (dolist (m *model-instances-id*)
    (test-log m)))

(defun test-log (modelfile)
  (format t "log: ~A~%" modelfile)
  (let ((log (clone-cbr:get-case-log modelfile)))
    (format t "### ~A~%" log)
    (cl-kb:with-kb (cl-kb:find-kb (format nil "instance-~A" modelfile) t t)
                   (with-open-file (strm 
                                    (merge-pathnames 
                                     (make-pathname :type "log.xml")
                                     (cl-kb:kb-protege-pprj-file cl-kb:*kb*))
                                    :direction :output :if-exists :supersede)
                                   (format strm "~A~%" log)))))

(defun test-update-01 ()
  (test-update (car *model-instances-id*)))

(defun test-update-all ()
  (dolist (m *models*)
    (test-update-model m))
  (dolist (m *model-instances-id*)
    (test-update m)))

(defun test-update (modelfile)
  (format t "update: ~A~%" modelfile)
  (clone-cbr:update-case modelfile nil))

(defun test-update-model (modelfile)
  (format t "update model: ~A~%" modelfile)
  (clone-cbr:update-model modelfile nil))

(defun test-learn-01 ()
  (test-learn (car *model-instances-id*)))

(defun test-learn-all ()
  (dolist (m *model-instances-id*)
    (test-learn m)))

(defun test-learn (modelfile)
  (clone-cbr:update-case modelfile nil)
  (let ((ci (clone-ml:find-caseinfo modelfile)))
    (format t "~A~%" (clone-ml:caseinfo-current-state ci))
    (if (or (string= 
             (clone-ml:caseinfo-current-state ci)
             "Agreed")
            (string= 
             (clone-ml:caseinfo-current-state ci)
             "Aborted"))
        (progn 
          (format t "learn: ~A~%" modelfile)
          (clone-cbr:learn-case modelfile)))))
    

(defun test-process-01 ()
  (test-process (car *model-instances-id*)))

(defun test-process-all ()
  (dolist (m *model-instances-id*)
    (test-process m)))

(defun test-process (modelfile)
  (clone-cbr:update-case modelfile nil)
  (format t "~A~%" (clone-cbr:process-case modelfile "partner_invitation"))
  (format t "~A~%" (clone-cbr:process-case modelfile "join_negotiation"))
  (format t "~A~%" (clone-cbr:process-case modelfile "creating_offer"))
  (format t "~A~%" (clone-cbr:process-case modelfile "evaluating_offer")))
