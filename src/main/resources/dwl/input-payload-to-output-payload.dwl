%dw 2.0
output application/json

fun arrayElement(inputArr : Array) = 
	if( sizeOf(inputArr) > 0) inputArr else	["NA"] 
---

{
	"id": payload."show_id" as String,
	"category": payload."type" as String,
	"title" : payload.title as String,
	"director" : arrayElement(payload."director" splitBy (",") filter(item, index) -> item != ""),
	"cast" : arrayElement(payload."cast" splitBy(",") filter(item, index) -> item != ""),
	"country" : payload."country" as String,
	"release_year" : payload."release_year" as String,
	"date_added" : payload."date_added" as String,
	"rating" : payload."rating" as String,
	"duration" : payload."duration" as String,
	"geners" : arrayElement(payload."listed_in" splitBy(",") filter(item, index) -> item != ""),
    "description" : payload."description" as String	
	
}