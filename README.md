# betting-game-proof
<i>Note: These models are studied by Profs. Omer Angel and Mark Holmes, in the (unpublished) paper '“All In” poker sequences'.</i>

Computer-assisted proof for two theorems in the 3-player getting game.
 
## Betting game model
 
Consider the betting game involving 3 players, with initial stack sizes, $x$, $y$, $z$.
 
For each round of the game, two players are picked uniformly at random to bet on the outcome of a fair coin toss.
- The size of the bet is equal to the minimum of their two current stacks.
- The ``loser" of the game is the player to first reach $0.

## Notations
Given initial stacks $(x,y,z)$, where $0<x<y<z$, define:
- $f(x,y,z)$ = Pr(Player 1 is the loser), given initial stacks
- $h_n(x,y,z)$ = Pr(Player 1 is eliminated in exactly $n$ rounds)
- similarly, $h_n(y,x,z)$ = Pr(Player 2 is eliminated in exactly $n$ rounds), etc.
- $f_n(x,y,z) = \sum_{j=1}^n{h_j(x,y,z)} - \sum_{j=1}^n{h_j(y,x,z)}$
- $\alpha_n$ = threshold of interest for $f_n$ (see paper for more details).

## Repository structure
<pre>
.
|-- constants.ipynb
|-- gen_coords.ipynb
|-- gen_h.ipynb
|-- li_handler.ipynb
|-- mip.ipynb
|-- plot.ipynb
|-- simulation.ipynb
|-- verfication.ipynb
|-- xy
|   |-- f_n(x,y,z)-alpha_n.png
|   |-- h*(x,y,z)-h*(y,x,z)_lb.lp
|   |-- h_n(x,y,z)
|   |-- n=*_coords_f
|   |-- ...
|-- yz
|   |-- [similar to xy/]
</pre>

The directory `xy` contains data associated with $f(x,y,z)$.

The directory `yz` contains data associated with $f(y,z,x)$.

Key modules:
- `gen_h`: Logic for generating expressions for $h_n(x,y,z)$.
- `mip`: Building MIP models to lower bound $f_n$ and $h_n$.
- `plot`: Plot coordinates (x,y,z) for which $f_n(x,y,z) > \alpha_n$ (for the $yz$ version, $f_n(y,z,x) > \alpha_n$).

See the `constants` module for what the output files represent.


