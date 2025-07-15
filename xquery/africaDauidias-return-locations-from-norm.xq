(: return any location from normalized xml files :)
declare variable $f := { "marul-mar-dauid-norm-ianls2025.xml": "D",
"petrarca-africa-seg-norm-ianls2025.xml": "A"};
element div { 
map:for-each(
  $f,
  fn($file, $siglum) {
let $clausulae := for $wd in db:get("AfricaDauidias", $file)//*:l
return element seg { attribute ana { $siglum || $wd/@n } , $wd/*:w[(last() - 3, last() - 2, last() - 1)]/@norm/string() }
return $clausulae } )
}
(: 3 = last() - 2, last() - 1, last() :)
(: 2 = (last() - 1, last()) :)