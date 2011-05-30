-module(euler1).
-export([euler1/0]).

euler1() ->
    lists:sum([X || X <- lists:seq(1,999), X rem 3 =:= 0 orelse X rem 5 =:= 0]).
