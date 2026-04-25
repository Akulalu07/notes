//#set page(margin: 3cm)

#show math.equation: set text(font: "Fira Math")

= Пределы
== Замечательные пределы
$ lim_(x->0)(sin(x)/x )=1 $
$ lim_(x->0)(1+x)^(1/x) = lim_(x->inf)(1+1/x)^x = e $

== Эквивалентности при $x->0$
$ sin(x)~x $
$ tg(x) ~ x $
$ arcsin(x) ~ x $
$ arctan(x) ~ x $
$ 1 - cos(x) ~ x^2/2 $
$ a^x-1~x ln(a) $
$ ln(1+x)~x $
$ (1+x)^alpha - 1 = alpha x $
$ x-sin(x) ~ x^3/6 $
$ tg(x) - x ~ x^3/6 $
$ arcsin(x) - x ~ x^3/6 $
$ x - arctan(x) ~ x^3/6 $
== Тейлор и Маклорен
$
  f(x) & = sum_(k=0)^n (f^((k))(x_0))/(k!) (x-x_0)^k + o((x-x_0)^n), & x -> x_0 \
  f(x) & = sum_(n=0)^infinity (f^((n))(0))/(n!) x^n
$


#pagebreak()

= Таблица интегралов


#align(center)[
  #grid(
    columns: (200pt, 300pt),
    column-gutter: 20pt,
    row-gutter: 10pt,
    align: center + horizon,
    //grid.vline(x: 1, stroke: 0.5pt + gray),

    $ integral(0) d x & = c $, $ integral d F(x) = F(x) +c $,
    $ integral d x = x + c $,
    $ integral x^alpha d x = x^(alpha+1)/(alpha+1) + c $,

    $ integral (d x) / x = ln abs(x) + c $,
    $ integral alpha^x d x = alpha^x / (ln a) +c $,

    $ integral sin(x) d x = - cos(x) + c $,
    $ integral cos(x) d x = sin(x) + c $,

    $ integral tg(x) d x = -ln abs(cos(x))+ c $,
    $ integral ctg(x) d x = ln abs(sin(x)) + c $,

    $ integral (d x)/(sin x) = ln abs(tg(x/2)) +c $,
    $ integral (d x)/(cos x) = ln abs(tg(x/2 + pi/2))+c $,

    $ integral log_a x d x = x/ln(a)(ln(x) - 1) + c $,
    $integral ln x d x = x(ln x - 1) + 1 + c$,

    $integral (d x)/(x^2-a^2) = 1/(2a)ln abs((x-a)/(x+a)) +c$,
    $ integral (d x)/(a^2-x^2) = 1/(2a)ln abs((a+x)/(a-x)) +c $,

    $ integral (d x)/(x^2 + a^2) = 1/a arctan(x/a) + c $,
    $ integral (d x)/(sqrt(a^2- x^2)) = arcsin(x/a) + c $,

    $ integral sqrt(a^2-x^2) d x = x/2 sqrt(a^2-x^2) + a^2/2 arcsin(x/a) + c $,
    $
      integral sqrt(x^2 plus.minus a) d x = x/2sqrt(x^2 plus.minus a) plus.minus a/2 ln abs(x + sqrt(x^2 plus.minus a)) + c
    $,

    $
      integral (d x ) / (sqrt(x^2 plus.minus a)) = ln abs(x + sqrt(x^2 plus.minus a)) + c
    $,
    $$,

    $ integral (f'(x))/(f (x) ) d x = ln abs(f(x)) +c $,
    $ integral (f'(x))/sqrt(f(x)) d x = 2 sqrt(f(x)) + c $,

    $ integral s h x d x = c h x + c $, $ integral c h x d x = s h x + c $,

    $ integral t h x d x = ln abs(c h x) + c $,
    $ integral c t h x d x = ln abs(s h x) + c $,

    $ integral (d x) / (c h^2 x ) = t h x + c $,
    $ integral (d x) / (s h^2 x ) = - c t h x + c $,

    $ integral (d x)/ (s h x) = ln abs(t h x/2) + c $,
    $ integral (d x)/ (c h x) = arctan(s h x) + c $,
  )
]

Теорема Ньютона-Лейбница: $ integral_a^b f(x) "dx" = F(x) |_a^b = F(b)- F(b) $

Интеграл по частям: $ integral U "dV" = U V - integral V d U $

#pagebreak()
== В полярных координатах
D: $alpha <= phi <= beta$ , $0<=r <= r(phi)$

$ integral_alpha^beta (r^2(phi))/2 d phi $
== В Параметрическом виде
$
  cases(
    x = x(t),
    y = y(t)
  )
$
$t in [alpha;beta]$

По часовой:

$ S = integral_alpha^beta y(t)x'(t)"dt" $

== Длина кривой $gamma(t) = x(t) times y(t)$

$ L = abs(gamma) = integral_a^b sqrt((x'(t))^2 + (y'(t))^2) "dt" $

1) если $x = t => gamma(x) = (x;y(t))$:

$ L = integral_a^b sqrt(1 + (y'(x))^2) "dx" $

2) если $t = phi => gamma(phi) = (r(phi) cos(phi); r(phi) sin(phi))$:
$ L = integral_a^b sqrt(r^2(phi) + r'(phi)^2) d phi $

== Вычисление объема

$S(x)$ - площадь сечения

$ V = integral_a^b S(x) d x $

Объем тела вращение вокруг оси Ox

$ V = pi integral_a^b y^2(x) $

Объем тела вращение вокруг оси Oy

$ V = pi integral_a^b x^2(y) d y $
$ V = 2pi integral_a^b x y(x) d x $

