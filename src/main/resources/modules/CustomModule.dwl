var collection = ['!','@','#','%','^','&','*','(',')','_','-','+','=','[','{','<','>','?','}',']','0','1','2','3','4','5','6','7','8','9','Q','W','E','R','T','Y','U','I','O','P','A','S','D','F','G','H','J','K','L','Z','X','C','V','B','N','M','q','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m']
var randomPassword = (digit:Number) -> 
	1 to digit map((value, index)->
		collection[round(randomInt(82))] 
	) joinBy ""