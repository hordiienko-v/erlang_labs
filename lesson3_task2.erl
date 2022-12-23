-module(lesson3_task2).
-export([words/1]).

words(Bin) ->
	words(Bin, <<>>).
	
words(<<" ", Rest/binary>>, Word) ->
	[Word | words(Rest, <<>>)];
words(<<C/utf8, Rest/binary>>, Word) ->
	words(Rest, <<Word/binary, C/utf8>>);
words(<<>>, Word) ->
	[Word].
