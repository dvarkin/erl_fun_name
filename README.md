erl_fun_name
============

It's set of macroses for take and transform function name in current function.

example:

some_function() ->
  AtomFunctionName = ?ERL_FUN_ATOM,
  erlang:display(AtomFunctionName).

  
%% Args = [{<<"get_function">>, <<"exmaple value">>}].

get_function(Args) ->
	proplists:get_value(?ERL_FUN_BINARY, Args).