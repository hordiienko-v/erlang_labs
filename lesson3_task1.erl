-module(lesson3_task1).
-export([first_word/1]).

first_word(Bin) ->
	first_word(Bin, <<>>).
	
first_word(<<" ", _/binary>>, Word) ->
	Word;
first_word(<<C/utf8, Rest/binary>>, Word) ->
	first_word(Rest, <<Word/binary, C/utf8>>);
first_word(<<>>, Word) ->
	Word.
