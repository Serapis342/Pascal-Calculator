Program Calculator;

procedure showResult(result : integer);
  begin
    writeln(result);
  end;
  
procedure showResultDouble(resultDouble : double);
  begin
	writeln(resultDouble);
  end;
  
procedure calculate(number1, number2 : Integer; myOperator : char);
	var 
	  result : integer;
	  resultDouble : double;
	begin
	  case (myOperator) of
	    '+' : result := number1 + number2;
	    '-' : result := number1 - number2;
	    '*' : result := number1 * number2;
	    '/' : 
	    begin 
	    	resultDouble := number1 / number2;
	    	showResultDouble(resultDouble);
	    end;	   
	end;
	   showResult(result);
	 end;
	 
procedure getUserInput();
	var
		number1, number2 : Integer;
		myOperator : char;
	begin
		writeln('Geben sie die erste Zahl ein: ');
		readln(number1);
		writeln('Geben sie die zweite Zahl ein: ');
		readln(number2);
		writeln('Geben sie den Operator ein (+, -, *, /): ');
		readln(myOperator);
		
		calculate(number1, number2, myOperator);
	end;

begin
  getUserInput();
end.
