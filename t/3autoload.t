#!perl -w
BEGIN {
    chdir 't' if -d 't';
    unshift @INC, '../lib';
}
use Test::Simple tests => 2;
use ex::newest;
use lib 'a';
use Getopt::Long;
ok( $Getopt::Long::VERSION > 0.001, 'Newer Getopt::Long loaded' );
ok( (grep m!Getopt/Long/autosplit.ix!, keys %INC), 'autosplit index loaded' );
