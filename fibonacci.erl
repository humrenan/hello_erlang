-module(fibonacci).

-export([fib/1, fib_with_history/1, test/0]).

fib(1) -> 1;
fib(2) -> 1;
fib(N) when N>2 ->
    fib(N-1) + fib(N-2).

%    depois = erlang:system_time().
%    total = erlang:now_diff(antes, depois).
fib_with_history(N) ->
    fib_with_history(N,1,1,0).

fib_with_history(1,_,_,_) -> 1;
fib_with_history(2,_,_,_) -> 1;
fib_with_history(N,N,P1,_P2) when N>2 -> P1;
fib_with_history(N,M,P1,P2) when N>2 -> 
    fib_with_history(N,M+1,P2+P1,P1).



test() ->
    true = (fib(1)==1),
    true = (fib(15)==610),
    true = (fib(5)==fib_with_history(5)).