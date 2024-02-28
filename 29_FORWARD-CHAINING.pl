% Initial facts
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

% Forward Chaining
forward_chaining :-
    (bird(X), \+ can_fly(X), assertz(can_fly(X)), fail; true),
    (fish(Y), \+ can_swim(Y), assertz(can_swim(Y)), fail; true),
    (insect(Z), \+ can_crawl(Z), assertz(can_crawl(Z)), fail; true).