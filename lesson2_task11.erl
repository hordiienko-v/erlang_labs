-module(lesson2_task11).
-import(lesson2_task5, [reverse/1]).
-export([encode_modified/1]).

encode_modified([]) -> 
	[];
encode_modified([H | T]) -> 
	reverse(encode_modified(T, [H])).
	
encode_modified([], L) -> 
	L;
encode_modified([Symbol | T1], [{Count, Symbol} | T2]) ->  
	encode_modified(T1, [{Count + 1, Symbol} | T2]);
encode_modified([Symbol1 | T1], [{Count, Symbol2} | T2] = X) ->  
	encode_modified(T1, [Symbol1 | X]);
encode_modified([Symbol | T1], [Symbol | T2]) ->  
	encode_modified(T1, [{2, Symbol} | T2]);
encode_modified([Symbol1 | T1], [Symbol2 | T2] = X) ->  
	encode_modified(T1, [Symbol1 | X]).
