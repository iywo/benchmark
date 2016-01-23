%% DOMAIN:    Geometry, geometric inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2006, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-22
%%
%% <PROBLEM-TEXT>
%% Let ABC be a triangle with incenter I. A point P in the interior of the
%% triangle satisfies
%% angle(PBA) + angle(PCA) = angle(PBC) + angle(PCB).
%% Show that AP >= AI, and that equality holds if and only if P = I.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  111 (   6 equality;  62 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   97 (   0   ~;   0   |;   7   &;  86   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :   10 (   0 sgn;  10   !;   0   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '+/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_B @ V_A ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_C @ V_A ) ) )
          = ( '+/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_B @ V_C ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_C @ V_B ) ) ) ) )
     => ( '>=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_I ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '+/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_B @ V_A ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_C @ V_A ) ) )
          = ( '+/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_B @ V_C ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_C @ V_B ) ) ) ) )
     => ( ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) )
            = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_I ) ) )
         => ( V_P = V_I ) )
        & ( ( V_P = V_I )
         => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) )
            = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_I ) ) ) ) ) ) )).