xquery version "3.1";

module namespace ninetynine = "http://xquery.ninja/ninetynine";

declare function ninetynine:split($items as array(*)*, $num as xs:integer) as array(*)*
{
  if ($num le 0) 
  then
     array { 
      [],
      $items
    }
  else if ($num ge array:size($items))
  then
    array { 
     $items,
     []
    }
  else
      let $array1 := array { $items?(1 to $num) }
      let $array2 := array:subarray($items, $num + 1)
      return array { $array1, $array2 }
};