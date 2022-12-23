-module(lesson2_task5).
-export([reverse/1]).

reverse(X) ->
	reverse(X, []).

reverse([], X) ->
	X;
reverse([H | T], X) ->
	reverse(T, [H | X]).
	