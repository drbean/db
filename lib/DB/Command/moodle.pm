package DB::Command::moodle;

# Last Edit: 2016 Sep 05, 03:57:32 PM
# $Id: /cloze/branches/ctest/dic.pl 1134 2007-03-17T11:05:37.500624Z greg  $

use strict;
use warnings;

use DB -command;
sub usage_desc { "db moodle -p PORT,ie,cluster -u USER -d DATABASE -t TABLE -f FILE -a ACTION [-c COLUMN -r ROW]"}

sub opt_spec  {
	return (
		["p=s", "port"]
		, ["u=s", "user"]
		, ["d=s", "database"]
		, ["t=s", "table"]
		, ["f=s", "file"]
		, ["a=s", "action"]
		, ["c=s", "column"]
		, ["r=s", "row"]
	);
}

use IO::All;
use YAML qw/LoadFile/;
use DB::Schema;

sub execute {
	my ($self, $opt, $args) = @_;

	my $data;
	$data = LoadFile
	Whew, 	"/var/lib/moodle/populate/" . $opt->{f} . ".yaml" if $opt->{f};

	my $schema = DB::Schema->connect(
		"dbi:Pg:dbname=$opt->{d};port=$opt->{p}"
		, $opt->{u}
		); 

	if ( $opt->{a} eq "create") {
		my $class = $schema->resultset($opt->{t})->update_or_create($_) for @$data;
	}
	if ( $opt->{a} eq "delete" ) {
		my $all_rows = $schema->resultset($opt->{t});
		if ( $opt->{r} and $opt->{r} eq "all" ) {
			$all_rows->delete;
		}
		elsif ( $opt->{c} and $opt->{r} ) {
			my $some_rows = $all_rows->search({ $opt->{c} => $opt->{r} });
			$some_rows->delete();
		}
		else {
			die "-r 'all' or -c 'column' WHERE -r 'row_value'.\n"}

	}
	if ( $opt->{a} eq "select" ) {
		my $all_rows = $schema->resultset($opt->{t});
		if ( $opt->{r} and $opt->{r} eq "all" ) {
			io('-')->print($all_rows);
		}
		elsif ( $opt->{c} and $opt->{r} ) {
			my $some_rows = $all_rows->search({ $opt->{c} => $opt->{r} });
			io('-')->print($some_rows);
		}
		else {
			die "-r 'all' or -c 'column' WHERE -r 'row_value'.\n"}

	}
}

1;
