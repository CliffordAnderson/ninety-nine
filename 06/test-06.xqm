xquery version "3.1";

module namespace test = 'http://basex.org/modules/xqunit-tests';

import module namespace ninetynine = "http://xquery.ninja/ninetynine" 
  at "problem-06.xqm";

declare %unit:test function test:test1() {
  unit:assert-equals(ninetynine:is-palindrome(( 1, 3, 5, 8, 5, 3, 1 )), true())
};
 
declare %unit:test function test:test2() {
  unit:assert-equals(ninetynine:is-palindrome(( 2 , 1)), false())
};

declare %unit:test function test:test3() {
  unit:assert-equals(ninetynine:is-palindrome(( 1 )), true())
};

declare %unit:test function test:test4() {
  unit:assert-equals(ninetynine:is-palindrome(( )), true())
};

declare %unit:test function test:test5() {
  unit:assert-equals(ninetynine:is-palindrome(( "aa", "bb", "aa" )), true())
};

declare %unit:test function test:test6() {
  unit:assert-equals(ninetynine:is-palindrome(( "aab", "bb", "aa" )), false())
};