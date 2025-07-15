let $d := "marul-mar-dauid-norm-ianls2025.xml"
let $a := "petrarca-africa-seg-norm-ianls2025.xml"
let $sigl := "A" (: "D" :)
let $clausulae := for $wd in db:get("AfricaDauidias", $a)//*:l
order by $wd/*:w[last() - 1]/@norm , $wd/*:w[last()]/@norm
return element seg { attribute ana { $sigl } , $wd/@n , $wd/*:w[(last() - 1, last())]/@norm/string() }
return element div { $clausulae }