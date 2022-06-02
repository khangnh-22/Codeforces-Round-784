var
	t, n, l, r: integer;
	s: AnsiString;
	bad, b1, b2: boolean;

function nextStamp(): boolean;
begin
	l := r + 1;
	while (l <= n) and (s[l] = 'W') do inc(l);
	r := l - 1;
	while (r < n) and (s[r+1] <> 'W') do inc(r);

	if (l > r) then exit(false);
	exit(true);
end;

function exist(c: AnsiChar): boolean;
var i: integer;
begin
	if (r > n) or (l > r) then exit(false);
	for i := l to r do
		if (s[i] = c) then exit(true);
	
	exit(false);
end;

begin
	readln(t);
	while (t > 0) do
	begin
		dec(t);
		readln(n);
		readln(s);
		l := 0;
		r := 0;
		bad := false;

		while (nextStamp()) do
		begin
			b1 := exist('R');
			b2 := exist('B');
			if (b1 xor b2) then bad := true;
		end;

		if (bad) then writeln('NO')
		else writeln('YES');
	end;
end.
