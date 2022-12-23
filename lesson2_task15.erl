-module(lesson2_task15).
-export([replicate/2]).

replicate([], Counter) -> 
	[];
replicate(X, 0) ->
	[];
replicate(X, Counter) ->
	replicate(X, Counter, Counter).

replicate([], _, _) ->
	[];
replicate([H | T], Counter, 1) ->
	[H | replicate(T, Counter, Counter)];
replicate([H | T] = X, Counter, Current) ->
	[H | replicate(X, Counter, Current - 1)].
