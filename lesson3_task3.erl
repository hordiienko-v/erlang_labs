-module(lesson3_task3).
-export([split/2]).

split(Bin, Sep) ->
	split(list_to_binary(Sep), string:length(Sep), Bin, <<>>).
	
split(Sep, SepLen, Bin, Word) when bit_size(Bin) < SepLen*8 ->
	[<<Word/binary, Bin/binary>>];
split(Sep, SepLen, Bin, Word) ->
	<<Prefix:SepLen/binary, BinRest/binary>> = Bin,
	case Prefix of
		Sep -> [Word | split(Sep, SepLen, BinRest, <<>>)];
		_ -> <<C:1/binary, PrefixRest/binary>> = Prefix, 
			 split(Sep, SepLen, <<PrefixRest/binary, BinRest/binary>>, <<Word/binary, C/binary>>)
	end.
