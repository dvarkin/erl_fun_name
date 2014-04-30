%% function name as atom
-define(ERL_FUN_ATOM, '__erl_fun_atom__').
%% function name as binary
-define(ERL_FUN_BINARY, '__erl_fun_binary__').
%% function name as string
-define(ERL_FUN_STRING, '__erl_fun_string__').
%% function arity
-define(ERL_FUN_ARITY, '__erl_fun_arity__'). 

-define(GET_BY_NAME(Default), proplists:get_value(?ERL_FUN_BINARY, Args, Default)).
-define(GET_BY_NAME, ?GET_BY_NAME(undefined)).
-define(SET(Key, Value), ?MODULE:new(lists:keystore(Key, 1, Args, {Key, Value}))).
-define(SET(Value), ?SET(?ERL_FUN_BINARY, Value)).


