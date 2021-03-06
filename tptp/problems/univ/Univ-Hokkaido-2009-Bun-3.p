%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2009, Humanities Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-20
%%
%% <PROBLEM-TEXT>
%% For a real number $t > 0$, consider the points $P(t, 0)$,
%% $Q(2 t, 1-4 t^2)$, and $R(-t, 1-t^2)$ on the coordinate plane. Answer
%% the following questions:
%%
%% (1) Find the value of $t$ such that $P$, $Q$, and $R$ exist on a
%% straight line.
%%
%% (2) Let $t_0$ be the value found in (1). When $0 < t < t_0$, find the
%% maximum value of the area $S(t)$ of the triangle $\triangle PQR$ and
%% the value of $t$ that gives the maximum value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  117 (   8 equality;  30 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :  100 (   0   ~;   0   |;   8   &;  92   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   0   !;   7   ?;   6   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( $greater @ V_t @ 0.0 )
        & ( V_P
          = ( '2d.point/2' @ V_t @ 0.0 ) )
        & ( V_Q
          = ( '2d.point/2' @ ( $product @ 2.0 @ V_t ) @ ( $difference @ 1.0 @ ( $product @ 4.0 @ ( '^/2' @ V_t @ 2.0 ) ) ) ) )
        & ( V_R
          = ( '2d.point/2' @ ( $difference @ 0.0 @ V_t ) @ ( $difference @ 1.0 @ ( '^/2' @ V_t @ 2.0 ) ) ) )
        & ( '2d.colinear/3' @ V_P @ V_Q @ V_R ) ) )).

thf(p2_0_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_max_ls: ( 'ListOf' @ $real )] :
      ? [V_S: 'R2R',V_Dom: ( 'SetOf' @ $real ),V_t: $real,V_Smax: $real] :
        ( ( V_max_ls
          = ( 'cons/2' @ $real @ V_Smax @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) )
        & ( 'func-max/4' @ V_S @ V_Dom @ V_t @ V_Smax )
        & ( V_S
          = ( 'fun/1'
            @ ^ [V_t0_dot_0: $real] :
                ( '2d.area-of/1' @ ( '2d.triangle/3' @ ( '2d.point/2' @ V_t0_dot_0 @ 0.0 ) @ ( '2d.point/2' @ ( $product @ 2.0 @ V_t0_dot_0 ) @ ( $difference @ 1.0 @ ( $product @ 4.0 @ ( '^/2' @ V_t0_dot_0 @ 2.0 ) ) ) ) @ ( '2d.point/2' @ ( $difference @ 0.0 @ V_t0_dot_0 ) @ ( $difference @ 1.0 @ ( '^/2' @ V_t0_dot_0 @ 2.0 ) ) ) ) ) ) )
        & ( V_Dom
          = ( 'set-by-def/1' @ $real
            @ ^ [V_t0: $real] :
                ( ( $less @ 0.0 @ V_t0 )
                & ( $less @ V_t0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( V_t_dot_0
      = ( $quotient @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_0_answer,answer,(
    ^ [V_max_ls_dot_0: ( 'ListOf' @ $real )] :
      ( V_max_ls_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 3.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_0_question,[])).

