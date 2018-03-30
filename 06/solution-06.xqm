xquery version "3.1";

module namespace ninetynine = "http://xquery.ninja/ninetynine";

declare function ninetynine:is-palindrome($items as item()*) as xs:boolean
{
  fn:deep-equal($items, fn:reverse($items))
};