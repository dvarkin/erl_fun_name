erl_fun_name
============

It's set of macroses for take and transform function name in current function.

?ERL_FUN_ATOM    - return current function name as atom
?ERL_FUN_BINARY  - return current function name as binary
?ERL_FUN_STRING  - return current function name as string

example:

```erlang

-include_lib("erl_fun_name/include/erl_fun_name.hrl")

some_function() ->
  AtomFunctionName = ?ERL_FUN_ATOM,
  erlang:display(AtomFunctionName).
  
%% Usage example:

Args = [{<<"get_some_field">>, <<"exmaple value">>}].

get_some_field(Args) ->
	proplists:get_value(?ERL_FUN_BINARY, Args).

%% <<"exmaple value">> will output


```
