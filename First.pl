# print "Hello \n";

#print ("Hello \n");

=begin comment
This is a comment in a unique way
=cut

#print ('Hello \n');

$a = 11;

#print "Value = $a";

#$var = <<"EOF";
#This will print the following 
#Value = $a
#EOF
#print "$var";

#$result = "The value is \"Number\""; #tough
#print "\$result\n";

#$result = "The value \nis Number";
#print "$result\n";

#$result = 'The value \tis Number';
#print "$result\n";

#$result = "\lThe value is Number";
#print "$result\n";

#$result = "\LThe value is Number";
#print "$result\n";

#$result = "\QThe value is Number";
#print "$result\n";

#$result = "The value \Uis\E Number";
#print "$result\n";

#$name = "Sahil Udayasingh";

#print "$name\n";

#@names = ("Sahil", "udayasingh",15);

#%data = ('sahil', 70000, 'prj', 5000);

#$size = @names;
#@new = @names;

#print "$names[0]\n";
#print "$names[2]\n";
#print "$data{'sahil'}\n";
#print "$size\n";
#print "@new";

$octal = 0311;
$hexa = 0xc8;
print "$octal\n";
print "$hexa\n";

$var = "Minus";
$new = "Add";

$sum = "$new-$var";

print "$sum\n";

$add = 4 + 6;

print "$add\n";

$angry  = v9786;
$Sahil    = v102.111.111;

print "$Sahil\n";
print "$angry\n";

print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";


print "__FILE__ __LINE__ __PACKAGE__\n";