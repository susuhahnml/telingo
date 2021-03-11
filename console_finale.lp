% SAT (Setp 3) 

% *******************  RULES
%{a(0)}.
__initial(0).
{l_4}. % Choice for theory added manually
:- not l_4.
:- l_4, not a(0).
:- a(0), e_5, not l_4.
:- l_4, not e_5.
:- l_4, not l_4.
:- not l_4, l_4.
%{a(1)}.
{l_9}.
:- l_9, not a(1).
:- a(1), e_8, not l_9.
:- l_9, not e_8.
:- e_5, not l_9.
:- not e_5, l_9.
%{a(2)}.
{l_13}.
:- l_13, not a(2).
:- a(2), e_12, not l_13.
:- l_13, not e_12.
:- e_8, not l_13.
:- not e_8, l_13.
% ******************* ASSUMED
% ******************* EXTERNALS
{e_5}.
{e_8}.
{e_10}.
e_10.
{e_12}.
e_12.
% ******************* AUX LITERALS
% l_4 := &tel(0){(>*a)}
% l_9 := (>*(a()))
% l_13 := (>*(a()))
a(0).
a(1).
a(2).