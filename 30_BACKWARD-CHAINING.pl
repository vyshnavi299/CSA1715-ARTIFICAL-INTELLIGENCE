% Facts
bird(tweety).
fish(nemo).
insect(spider).
has_feathers(tweety).
has_scales(nemo).
has_legs(spider).

% Rules
can_fly(X) :- bird(X), has_feathers(X).
can_swim(X) :- fish(X), has_scales(X).
can_crawl(X) :- insect(X), has_legs(X).

% Backward Chaining
backward_chaining(Goal) :-
    Goal,
    write('Goal is true.').

backward_chaining(Goal) :-
    \+ Goal,
    write('Goal is false.').