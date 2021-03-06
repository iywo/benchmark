%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 1999, Humanities Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-12
%%
%% <PROBLEM-TEXT>
%% (a) For the complex number $z$ ( $z\not= - 1$), define
%% $f(z)=\frac{z-1}{z+1}$. Answer the following questions:
%%
%% 1) Find $z$ that satisfies $f(f(z))= z + 1$.
%%
%% 2) When the $3$ points $0$, ${\alpha}$, and $f(f({\alpha}))$ form an
%% equilateral triangle, find the complex number ${\alpha}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   6 equality;  20 variable)
%            Maximal formula depth :   12 (  10 average)
%            Number of connectives :   61 (   0   ~;   1   |;   2   &;  58   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    0 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_z: 'complex.Complex'] :
      ? [V_f: ( 'complex.Complex' > 'complex.Complex' )] :
        ( ( V_f
          = ( ^ [V_z_dot_0: 'complex.Complex'] :
                ( 'complex.//2' @ ( 'complex.-/2' @ V_z_dot_0 @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) @ ( 'complex.+/2' @ V_z_dot_0 @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) ) ) )
        & ( ( 'complex.+/2' @ V_z @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) )
          = ( V_f @ ( V_f @ V_z ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_a: 'complex.Complex'] :
      ? [V_f: ( 'complex.Complex' > 'complex.Complex' )] :
        ( ( V_f
          = ( ^ [V_z: 'complex.Complex'] :
                ( 'complex.//2' @ ( 'complex.-/2' @ V_z @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) @ ( 'complex.+/2' @ V_z @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) ) ) )
        & ( '2d.is-equilateral-triangle/3' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) @ ( 'complex.complex->point/1' @ V_a ) @ ( 'complex.complex->point/1' @ ( V_f @ ( V_f @ V_a ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_z_dot_1: 'complex.Complex'] :
      ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z_dot_1 @ 2.0 ) @ V_z_dot_1 )
      = ( 'complex.complex/2' @ -1.0 @ 0.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: 'complex.Complex'] :
      ( ( ( 'complex.-/2' @ ( 'complex.^/2' @ V_a_dot_0 @ 2.0 ) @ V_a_dot_0 )
        = ( 'complex.complex/2' @ -1.0 @ 0.0 ) )
      | ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_a_dot_0 @ 2.0 ) @ V_a_dot_0 )
        = ( 'complex.complex/2' @ -1.0 @ 0.0 ) ) ) ),
    answer_to(p2_question,[])).

