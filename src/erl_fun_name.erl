-module(erl_fun_name).
-export([parse_transform/2]). 

-include("include/erl_fun_name.hrl").


parse_transform(AST, _Options) -> [parse(T) || T <- AST]. 

parse({function, _, FName, FArity, _} = T) ->
	erl_syntax_lib:map(fun(TE) 
						  -> parsemacro(FName, FArity, TE) end, T); 
parse(T) -> T. 

parsemacro(FName, FArity, T) ->
	R = case erl_syntax:type(T) of 
			atom -> 
				case erl_syntax:atom_value(T) of 
					?ERL_FUN_ATOM -> erl_syntax:atom(FName);
					?ERL_FUN_STRING -> erl_syntax:string(FName);
					?ERL_FUN_BINARY ->
						erl_syntax:binary([erl_syntax:binary_field(erl_syntax:integer(X)) || X <- atom_to_list(FName)]);
                    ?ERL_FUN_ARITY -> erl_syntax:integer(FArity);
                    _ -> T
                end; 
			_ -> T
					 
		end,
	erl_syntax:revert(R). 
