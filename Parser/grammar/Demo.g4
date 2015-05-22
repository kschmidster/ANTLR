grammar Demo;

program: expression+ ;

expression: left=expression '/' right=expression #Division
		  | left=expression '*' right=expression #Multiplication
		  | left=expression '-' right=expression #Minus
		  | left=expression '+' right=expression #Plus
		  | number=NUMBER #Number
		  ;

NUMBER: [0-9]+;
