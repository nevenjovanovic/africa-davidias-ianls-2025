let $a := "marul-mar-dauid-norm-ianls2025.xml"
let $b := "petrarca-africa-seg-norm-ianls2025.xml"
let $w := for $wd in db:get("AfricaDauidias", $b)//*:l/*:w/@norm/string()
let $wdl := lower-case(replace($wd, "v", "u"))
return $wdl
let $wordlist :=
for $occur in distinct-values($w)
let $count := count($w[. = $occur])
order by $count, $occur
(: where $count = 1 :)
return element tr { element td { $occur }, element td {$count} }
return element table {
  $wordlist
}