-module(hello).
-export([world/0]).

% dont forget the dot

world() ->
    io:format("Hello Erlang!~n").