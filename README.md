# betting-game-proof
<i>Note: These models are studied by Profs. Omer Angel and Mark Holmes, in the (unpublished) paper '“All In” poker sequences'.</i>

Computer-assisted proof for two theorems in the 3-player getting game.

<mark>See **README.pdf** for more detailed explanation of the modules, and how to run them for the proof of the relevant theorems.</mark>
 
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
- $\Delta_n(\cdot) = \sum_{j=1}^n{h_j(posState)} - \sum_{j=1}^n{h_j(negState)}$
- $\alpha_n$ = threshold of interest for $\Delta_n$ (see paper for more details).
- $V = \{(x,y,z):0 < x < y < z\}$

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
|   |-- Delta_n(x,y,z)-alpha_n.png
|   |-- h*(x,y,z)-h*(y,x,z)_lb.lp
|   |-- h_n(x,y,z)
|   |-- n=*_coords_f
|   |-- ...
|-- yz
|   |-- [similar to xy/]
|-- ...
</pre>

There are two versions studied:
1. `xyz`: studies $f(x,y,z) - f(y,x,z)$.
2. `yzx`: studies $f(y,z,x) - f(z,y,x)$.
3. `yyz`: studies $f(x,y,z) - f(y,y,z)$.
4. `uuz`: studies $f(x,y,z) - f(\frac{x+y}{2}, \frac{x+y}{2}, z)$

To switch version, simply go to `constants.ipynb`, and change `VERSION` to `Version.XY` or `Version.YZ`.

The directory `xyz` contains data associated with $f(x,y,z)$.\\
The directory `yzx` contains data associated with $f(y,z,x)$.\\
And so on.

### Key modules:
- `constants`: Version of states being studied, and definition of invariants used across all modules.
- `gen_h`: Logic for generating expressions for $h_n(x,y,z)$.
- `mip`: Building MIP models to lower bound $\Delta_n$ and $h_n(posState) - h_n(negState)$.
- `plot`: Plot coordinates (x,y,z) for which $\Delta_n(x,y,z) > \alpha_n$ (for the $yzx$ version, $\Delta_n(y,z,x) > \alpha_n$).

### Key data files (e.g.):
- `xyz/h_n(x,y,z)`: Cache for constants and indicator constraints in $h_n(x,y,z)$, in CSV format. Each line contains ($n$, constant, indicator constraints).
- `xyz/n=2_coords_f`: $(x,y,z)$ coordinates for which $\Delta_2(x,y,z) > \alpha_2$, for a fixed sum $x+y+z=2000$, in CSV format. Each line contains ($x$, $y$, $\Delta_n(x,y,z)$, $z$).\
Data for the plots below.
- `xyz/\Delta_n(x,y,z)-alpha_n.png`: A series of scatter plots of $x$ vs. $y$, for different $n$ values from $n=2$ to the first $n$ for which $\Delta_n(x,y,z) > \alpha_n$ for all regions in $V$. The colors are based on the $\Delta_n(x,y,z)$ values.


