-module(chicken).
-export([hatch/0]).

print_nl()->
	NL=io:format("~n", []).

print_egg()->
	R=rand:uniform(30),
	print_space(R),
	EGG=io:format("O", []).

print_space(0)->
	io:format(" ", []);

print_space(N)->
	io:format(" ", []),
	print_space(N-1).

hatch()->
	READ=io:get_chars('', 1),
	print_egg(),
	print_egg(),
	print_egg(),
	print_nl(),
	hatch().
