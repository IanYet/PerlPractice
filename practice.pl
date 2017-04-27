#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print("hello Perl!\n");

$a = "10";
print("$a\n");
$b = "\Uabc";
print($b."\n");
my $c = "123";
print $c."\n";

my %aHash;
$aHash{'a'} = 0;
$aHash{'b'} = 1;
$aHash{'c'} = 2;
$aHash{'d'} = 3;
$aHash{'e'} = 4;

my @anArray = keys (%aHash);

foreach my $aSalar (sort @anArray)
{
    print $aSalar."\n";
}

my $condition = 0;
if ($condition == 0)
{
    print "\$condition = $condition\n";
}

while ($condition < 5)
{
    print $condition;
    $condition++;
}

print"\n";

for (my $i = 0; $i < 5; $i++)
{
    for (my $j = 0; $j <= $i; $j++)
    {
        print"*";
    }

    print"\n";
}

my @arr = (1, 2, 3);
foreach my $item (sort @arr)
{
    print $item."\n";
}


my $file = "input.txt";
open(my $fh, "<", $file) or die "cannot open < $file";
while (my $aline = <$fh>)
{
    chomp($aline);
    print $aline."\n";
}

close $fh;

my $output = "output.txt";
open (my $fhOutput, ">>", $output)or die("Error: cannot open $output file.");
print $fhOutput "something ";
close $fhOutput;

my @testArray = (1,2,3);
sub processArrayByReference($){
    my $arrayref = shift;
    my @array = @$arrayref;

    foreach my $li (@array)
    {
        print $li;
    }
}
#it is strange...it seems useless.....
sub processArrayByValue($){
    my @array = @_;

    foreach my $li (@array)
    {
        print $li;
    }
}

processArrayByReference(\@testArray);
processArrayByValue(@testArray);

#my %hashDemo = {1, 'a', 2, 'b'};
sub printHash($){
    my %hash = %{shift()};
    foreach my $key (sort keys %hash)
    {
        my $value = $hash{$key};
        print "$key => $value\n"
    }
}

printHash(\%aHash);