@array = qw/ Monday Tuesday Sunday/;

print "@array\n";
print "$array[1]\n";

@var_30 = (1..30);

print "@var_30\n";
print "$var_30[15]\n";

$size = @var_30;
print "$size\n";

$max = $#var_30;
print "$max\n";

push(@var_30,51);
print "@var_30\n";

pop(@var_30);
print "@var_30\n";

unshift(@var_30,77);
print "@var_30\n";

shift(@var_30);
print "@var_30\n";

@slice = @var_30[10..17];
print "@slice\n";

splice (@var_30,5,5,77..81);
print "@var_30\n";

$strings = "Sahil Udayasingh gensec";

@names = split(' ', $strings);
print "$names[1]\n";

$new_string = join(' ',@names);
print "$new_string\n";

@arr = (5..6,1..2);
print "@arr\n";

@arr1 = sort(@arr);
print "@arr1\n";

#$[ = 1; #try again

#print "$arr1[2]\n";

@new = @var_30[4..9];

print "@new\n";