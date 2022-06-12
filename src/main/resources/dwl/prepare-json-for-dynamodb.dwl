%dw 2.0
output application/json
---
{
	"id" : {"s": payload."id" as String},
	"category" : {"s": if(isBlank(payload."category")) "NA" else payload."category"},
	"title" : {"s": if(isBlank(payload."title")) "NA" else payload."title"},
	"director": {"ss" : payload.director default ["NA"]},
	"cast" : {"ss" : payload."cast" default ["NA"]},
	"country" : {"s": if(isBlank(payload."country")) "NA" else payload."country"},
	"date_added" : {"s": if(isBlank(payload."date_added")) "NA" else payload."date_added"},
	"release_year" : {"s": if(isBlank(payload."release_year")) "NA" else payload."release_year"},
	"rating" : {"s": if(isBlank(payload."rating")) "NA" else payload."rating"},
	"duration" : {"s": if(isBlank(payload."duration")) "NA" else payload."duration"},
	"geners" : {"ss" : payload."geners" default ["NA"]},
	"description" : {"s": if(isBlank(payload."description")) "NA" else payload."description"}	
}