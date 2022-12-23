-module(lesson2_task10).
-import(lesson2_task5, [reverse/1]).
-export([encode/1]).

encode([]) -> 
	[];
encode([H | T]) -> 
	reverse(encode(T, [{1, H}])).
	
encode([], L) -> 
	L;
encode([Symbol | T1], [{Count, Symbol} | T2]) ->  
	encode(T1, [{Count + 1, Symbol} | T2]);
encode([Symbol1 | T1], [{Count, Symbol2} | T2] = X) ->  
	encode(T1, [{1, Symbol1} | X]).
