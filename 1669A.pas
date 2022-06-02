var 
	t, x: integer;

begin
	readln(t);
	while (t > 0) do
	begin
		dec(t);
		readln(x);
		if (x < 1400) then writeln('Division 4')
		else if (x < 1600) then writeln('Division 3')
		else if (x < 1900) then writeln('Division 2')
		else writeln('Division 1');
	end;
end.
