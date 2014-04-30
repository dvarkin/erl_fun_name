erl_fun_name
============

It's set of macroses for take and transform function name in current function.

```erlang


%% ?ERL_FUN_ATOM    - return current function name as atom
%% ?ERL_FUN_BINARY  - return current function name as binary
%% ?ERL_FUN_STRING  - return current function name as string

%% ?GET_BY_NAME - short version for proplists
%% ?SET - short version for proplits

%% example:


-include_lib("erl_fun_name/include/erl_fun_name.hrl")

some_function() ->
  AtomFunctionName = ?ERL_FUN_ATOM,
  erlang:display(AtomFunctionName).
  
%% Usage example:

Args = [{<<"get_some_field">>, <<"exmaple value">>}].

get_some_field() ->
	proplists:get_value(?ERL_FUN_BINARY, Args).

%% or the same

get_some_field() ->
	?GET_BY_NAME(Args).

%% <<"exmaple value">> will out
	

```
