-module(lesson2_task13).
-import(lesson2_task5, [reverse/1]).
-export([decode/1]).

decode([]) -> 
	[];
decode(X) ->
	reverse(decode(X, [])).
	
decode([], L) -> 
	L;
decode([{1, Symbol} | T], X) ->
	decode(T, [Symbol | X]);
decode([{Count, Symbol} | T], X) ->
	decode([{Count - 1, Symbol} | T], [Symbol | X]).
