(: from index return clausulae present in both A and D :)
let $doc := "/home/neven/Nextcloud/Documents/latinisti/petrarca/AfricaDauidias_clausulae_index.xml"
for $row in doc($doc)//*:table/*:tr
where $row/*:td[3][matches(. , "A") and matches(.,"D")]
return $row