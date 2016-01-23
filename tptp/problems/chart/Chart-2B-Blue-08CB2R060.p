%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R060
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   3 equality;  33 variable)
%            Maximal formula depth :   13 (  12 average)
%            Number of connectives :   60 (   0   ~;   0   |;   2   &;  56   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_G: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
     => ( ( '+/2' @ ( '2d.distance^2/2' @ V_A @ V_B ) @ ( '+/2' @ ( '2d.distance^2/2' @ V_B @ V_C ) @ ( '2d.distance^2/2' @ V_C @ V_A ) ) )
        = ( '*/2' @ 3 @ ( '+/2' @ ( '2d.distance^2/2' @ V_G @ V_A ) @ ( '+/2' @ ( '2d.distance^2/2' @ V_G @ V_B ) @ ( '2d.distance^2/2' @ V_G @ V_C ) ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( ( V_D
          = ( '2d.internally-dividing-point/3' @ V_B @ V_C @ ( '//2' @ 1 @ 3 ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C ) )
     => ( ( '+/2' @ ( '*/2' @ 2 @ ( '2d.distance^2/2' @ V_A @ V_B ) ) @ ( '2d.distance^2/2' @ V_A @ V_C ) )
        = ( '+/2' @ ( '*/2' @ 3 @ ( '2d.distance^2/2' @ V_A @ V_D ) ) @ ( '*/2' @ 6 @ ( '2d.distance^2/2' @ V_B @ V_D ) ) ) ) ) )).