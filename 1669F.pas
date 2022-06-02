type
	AI = array of integer;
var
	t: integer;
	n, i, l, r, ans, suml, sumr: int32;
	w: AI;

function max(a, b: int32): int32;
begin
	if (a > b) then exit(a);
	exit(b);	
end;

begin
	readln(t);

	while (t > 0) do
	begin
		dec(t);
		readln(n);
		
		SetLength(w, n);
		for i := 0 to n-1 do
			read(w[i]);

		l := 0;
		r := n-1;
		suml := w[0];
		sumr := w[n-1];
		ans := 0;

		while (l < r) do
		begin
			if (suml = sumr) then ans := max(ans, l + 1 + n - r);
			
			if (suml <= sumr) then 
			begin
				inc(l);
				suml := suml + w[l];
			end
			else if (sumr < suml) then 
			begin
				dec(r);
				sumr := sumr + w[r];
			end;
		end;
		
		writeln(ans);
	end;
end.
