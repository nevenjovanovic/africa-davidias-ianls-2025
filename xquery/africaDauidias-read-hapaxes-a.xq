let $wlist_a := doc("/home/neven/Nextcloud/Documents/latinisti/petrarca/africa_wordlist.html")
let $wlist_d := doc("/home/neven/Nextcloud/Documents/latinisti/petrarca/dauidias_wordlist.html")
let $semel_a := 
for $w in $wlist_a//tr
where $w/td[2]/string() = "1"
return $w/td[1]/string()
for $w_a in $semel_a
where $wlist_d//tr/td[1]/string() = $w_a
return $w_a