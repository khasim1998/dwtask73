%dw 2.0
output application/json
import hammingDistance from dw::core::Strings
/*
The Hamming distance between two equal-length strings of symbols is the number of positions at which the corresponding symbols are different
*/
---
(payload map(v,k)->{
 (v mapObject(value,key,index)->{
 "Hamming Distance":key hammingDistance value
 })
})




/*
[
 {
 "Hamming Distance": 1
 },
 {
 "Hamming Distance": 3
 }
]
*/