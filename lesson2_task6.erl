-module(lesson2_task6).
-import(lesson2_task5, [reverse/1]).
-export([is_palindrom/2]).

is_palindrom(A, B) ->
	A == reverse(B).
