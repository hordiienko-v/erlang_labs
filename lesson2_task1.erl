-module(lesson2_task1).
-export([last/1]).

last([H | []]) ->
	H;
last([_ | T]) ->
	last(T).
	