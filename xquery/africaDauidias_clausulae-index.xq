(: count occurrences of clausulae, return index of verses :)
(: let $a := "dauidias_clausulae.xml"
let $b := "africa_clausulae.xml" :)
let $clausulae := db:get("AfricaDauidias_clausulae")//*:seg
let $c := for $wd in distinct-values($clausulae)
let $count := count($clausulae[. = $wd])
let $index := $clausulae[. = $wd]/(@ana/string() || @n/string())
order by $count descending , $wd
return element tr { element td { $wd } , element td { $count }, element td { $index } }
return element table { $c }