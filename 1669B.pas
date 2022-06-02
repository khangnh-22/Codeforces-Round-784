type
	AI = array of integer;
var 
	t, n, ans, x, i: integer;
	cnt: AI;
	
begin
	readln(t);

	while (t > 0) do 
	begin
		dec(t);
		readln(n);
		
		setlength(cnt, n + 1);
		for i := 1 to n do cnt[i] := 0;
		ans := -1;
		while (n > 0) do
		begin
			dec(n);
			read(x);

			inc(cnt[x]);
			if (cnt[x] >= 3) then ans := x;
		end;

		writeln(ans);
	end;
end.
