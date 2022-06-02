type 
	AI = array of integer;
var 
	t, n, i: integer;
	a: AI;
	even1, even2, odd1, odd2: boolean;

begin
	readln(t);
	while (t > 0) do
	begin
		dec(t);

		readln(n);
		SetLength(a, n);
		even1 := false;
		even2 := false;
		odd1 := false;
		odd2 := false;

		for i := 0 to n-1 do 
		begin
			read(a[i]);
			if (i mod 2 = 0) then
			begin
				if (a[i] mod 2 = 1) then odd1 := true
				else even1 := true;
			end else 
			begin
				if (a[i] mod 2 = 1) then odd2 := true
				else even2 := true;
			end;
		end;

		if (even1 and odd1) then writeln('NO')
		else if (even2 and odd2) then writeln('NO')
		else writeln('YES');
	end;
end.
