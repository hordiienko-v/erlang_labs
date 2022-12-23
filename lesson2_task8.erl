-module(lesson2_task8).
-import(lesson2_task5, [reverse/1]).
-export([compress/1]).

compress([]) -> 
	[];
compress([H | T]) -> 
	reverse(compress(T, [H])).
	
compress([], L) -> 
	L;
compress([H | T1], [H | T2] = X) ->  
	compress(T1, X);
compress([H1 | T1], [H2 | T2] = X) ->  
	compress(T1, [H1 | X]).
