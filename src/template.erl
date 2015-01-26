%% Feel free to use, reuse and abuse the code in this file.

-module(template).

%% API.
-export([start/0, stop/0]).

start() ->
    ok = application:start(crypto),
    ok = application:start(ranch),
    ok = application:start(cowlib),
    ok = application:start(cowboy),
    ok = application:start(template),
    io:format("Point your browser at http://localhost:8080/ to use Devo.\n").


stop() ->
    error_logger:tty(false),
    ok = application:stop(crypto),
    ok = application:stop(ranch),
    ok = application:stop(cowboy),
    ok = application:stop(cowlib),
    ok = application:stop(template),
    error_logger:tty(true).
