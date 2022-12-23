-module(lesson2_task9).
-import(lesson2_task5, [reverse/1]).
-export([pack/1]).

pack([]) -> 
	[];
pack([H | T]) -> 
	reverse(pack(T, [[H]])).
	
pack([], L) -> 
	L;
pack([H | T1], [[H | T2] = X | T3]) ->  
	pack(T1, [[H | X] | T3]);
pack([H1 | T1], [H2 | T2] = X) ->  
	pack(T1, [[H1] | X]).
