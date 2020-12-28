#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use utf8;
use FindBin '$Bin';
use Test::More;
use IPC::Run3;
my $x = "$Bin/makereadme";
ok (-f $x, "File exists");
chdir ("$Bin/t/silly-distro") or die $!;
run3 ("$x", undef, \my $output, \my $errors);
if ($errors) {
    note ($errors);
}
ok (! $errors, "no errors");
ok ($output, "got output");
done_testing ();
