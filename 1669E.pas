var
	t: integer;
	n: int32;
	cnt: array['a'..'k', 'a'..'k'] of int32;
	ans: int64;
	s, a: string[2];
	k: byte;
	c: char;

procedure init();
var
	i, j: char;
begin
	for i := 'a' to 'k' do
		for j := 'a' to 'k' do
			cnt[i, j] := 0;

	ans := 0;
end;

begin
	readln(t);
	while (t > 0) do
	begin
		dec(t);

		readln(n);
		init();

		while (n > 0) do
		begin
			dec(n);
			readln(s);

			for k := 1 to 2 do
				for c := 'a' to 'k' do
				begin
					if (c = s[k]) then continue;
					a := s;
					a[k] := c;
					ans := ans + cnt[a[1], a[2]];
				end;

			inc(cnt[s[1], s[2]]);
		end;
		
		writeln(ans);
	end;
end.
