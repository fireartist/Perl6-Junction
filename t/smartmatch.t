use strict;
use Test::More;
plan skip_all => "~~ support requires v5.10.1" unless $] >= 5.010001;

plan tests => 16;

use Perl6::Junction qw(all any none one);

ok(! (5 ~~  all(1,2,5)), "5 !~~  all(1,2,5)" );
ok(  (5 ~~  any(1,2,5)), "5  ~~  any(1,2,5)" );
ok(! (5 ~~ none(1,2,5)), "5 !~~ none(1,2,5)" );
ok(  (5 ~~  one(1,2,5)), "5  ~~  one(1,2,5)" );

ok(  (5 ~~  all(5,5,5)), "5  ~~  all(5,5,5)" );
ok(  (5 ~~  any(5,5,5)), "5  ~~  any(5,5,5)" );
ok(! (5 ~~ none(5,5,5)), "5 !~~ none(5,5,5)" );
ok(! (5 ~~  one(5,5,5)), "5 !~~  one(5,5,5)" );

ok(! (3 ~~  all(1,2,5)), "3 !~~  all(1,2,5)" );
ok(! (3 ~~  any(1,2,5)), "3 !~~  any(1,2,5)" );
ok(  (3 ~~ none(1,2,5)), "3  ~~ none(1,2,5)" );
ok(! (3 ~~  one(1,2,5)), "3 !~~  one(1,2,5)" );


ok(! (  all(1,2,5) ~~ 5), " all(1,2,5) !~~ 5" );
ok(  (  any(1,2,5) ~~ 5), " any(1,2,5)  ~~ 5" );
ok(! ( none(1,2,5) ~~ 5), "none(1,2,5) !~~ 5" );
ok(  (  one(1,2,5) ~~ 5), " one(1,2,5)  ~~ 5" );
