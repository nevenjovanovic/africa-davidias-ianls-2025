(: count occurrences of three-word-clausulae, return index of verses :)
let $clausulae := db:get("AfricaDauidias_clausulae-2")//*:seg
let $c := for $wd in distinct-values($clausulae)
let $count := count($clausulae[. = $wd])
let $index := $clausulae[. = $wd]/@ana/string()
order by $count descending , $wd
return element tr { element td { $wd } , element td { $count }, element td { $index } }
return element table { $c }