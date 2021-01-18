%list = (-sahil => 31, -pavika => 06, -mom => 02, -papa => 24);

print "$list{-sahil}\n";

@arr = @list{-sahil , -pavika};

print "@arr\n";

@names = keys %list;

print "@names\n";

@date = values %list;

print "@date\n";

if (exists($list{-sahil}))
	{
		print "$list{-sahil}\n";
	}
	else
	{
		print "-1\n";
	}
	
$size = @names;

print "$size\n";

$list{-bhai} = 26;

@dob = values %list;
$size1 = @dob;

print "$size1\n";

delete $list{-bhai};
@name = keys %list;
$size2 = @name;
print "$size2\n";