-module(lesson2_task12).
-import(lesson2_task5, [reverse/1]).
-export([decode_modified/1]).

decode_modified([]) -> 
	[];
decode_modified(X) ->
	reverse(decode_modified(X, [])).
	
decode_modified([], L) -> 
	L;
decode_modified([{2, Symbol} | T], X) ->
	decode_modified([Symbol | T], [Symbol | X]);
decode_modified([{Count, Symbol} | T], X) ->
	decode_modified([{Count - 1, Symbol} | T], [Symbol | X]);
decode_modified([Symbol | T], X) ->
	decode_modified(T, [Symbol | X]).
