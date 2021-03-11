% RUN python telingo/program_observer.py 3 test_out.lp test_prg.lp
% #program always.
% {a}.
% {b}.
% #program initial.
% % :- not &del{ ?b ;; &true ;; ?a ;; &true .>? &true.>* &false}.
% :- not &del{ *(?b ;; &true) ;; *(?a ;; &true) .>? &true.>* &false}.

#program always.
{up}.
{down}.
{serve}.
{ready}.
#program initial.
:- not &del{ *( (*(?up ;; &true) + *(?down ;; &true)) ;; ?ready;; ?serve;; &true)
		 ;; *(?wait ;; &true) .>? &true.>* &false }.