%% DOMAIN:    Geometry, quadrangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1967, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Let $ABCD$ be a parallelogram with side lengths $AB = a$, $AD = 1$, and with
%% $\angle BAD = \alpha$. If $\triangle ABD$ is acute, prove that the four
%% circles of radius $1$ with centers $A$, $B$, $C$, $D$ cover the parallelogram
%% if and only if\[
%% a \leq \cos\alpha + \sqrt{3} \sin\alpha.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  126 (   1 equality;  61 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :  123 (   0   ~;   8   |;   3   &; 107   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( ( '2d.is-parallelogram/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_D ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 1 ) )
     => ( ( ! [V_P: '2d.Point'] :
              ( ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
                | ( '2d.on/2' @ V_P @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) )
             => ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.circle/2' @ V_A @ 1 ) )
                | ( '2d.point-inside-of/2' @ V_P @ ( '2d.circle/2' @ V_B @ 1 ) )
                | ( '2d.point-inside-of/2' @ V_P @ ( '2d.circle/2' @ V_C @ 1 ) )
                | ( '2d.point-inside-of/2' @ V_P @ ( '2d.circle/2' @ V_D @ 1 ) ) ) )
         => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '+/2' @ ( 'cos/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) ) @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) ) ) ) ) )
        & ( ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '+/2' @ ( 'cos/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) ) @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) ) ) ) )
         => ! [V_P_dot_0: '2d.Point'] :
              ( ( ( '2d.point-inside-of/2' @ V_P_dot_0 @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
                | ( '2d.on/2' @ V_P_dot_0 @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) )
             => ( ( '2d.point-inside-of/2' @ V_P_dot_0 @ ( '2d.circle/2' @ V_A @ 1 ) )
                | ( '2d.point-inside-of/2' @ V_P_dot_0 @ ( '2d.circle/2' @ V_B @ 1 ) )
                | ( '2d.point-inside-of/2' @ V_P_dot_0 @ ( '2d.circle/2' @ V_C @ 1 ) )
                | ( '2d.point-inside-of/2' @ V_P_dot_0 @ ( '2d.circle/2' @ V_D @ 1 ) ) ) ) ) ) ) )).