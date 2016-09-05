package DB::Command::moodle;

# Last Edit: 2016 Sep 05, 09:15:40 PM
# $Id: /cloze/branches/ctest/dic.pl 1134 2007-03-17T11:05:37.500624Z greg  $

use strict;
use warnings;

use DB -command;
sub usage_desc { "db moodle -p PORT,ie,cluster -u USER -w PASSWD-d DATABASE -t TABLE -f FILE -a ACTION [-c COLUMN -r ROW]"}

sub opt_spec  {
	return (
		["p=s", "port"]
		, ["u=s", "user"]
		, ["w=s", "password"]
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
	$data = LoadFile "/var/lib/moodle/populate/" . $opt->{f} . ".yaml" if $opt->{f};

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
		my $io = io('dbout');
		# $io->autoflush;
		$io->print("action: $opt->{a}\n");
		my $all_rows = $schema->resultset($opt->{t});
		if ( $opt->{r} and $opt->{r} eq "all" ) {
			$io->append("table: $opt->{t}\trow: $opt->{r}\n");
			while ( my $row = $all_rows->next ) {
				$io->append("$opt->{r}:\t" . $row->id . "\n");
			}
		}
		elsif ( $opt->{c} and $opt->{r} ) {
			my $some_rows = $all_rows->search({ $opt->{c} => $opt->{r} });
			$io->append("table: $opt->{t}\tcolumn: $opt->{c}\trow: $opt->{r}\n");
			my $column = $opt->{c};
			while ( my $row = $some_rows->next ) {
				$io->append("$opt->{c}\t" . $row->$column . "\n");
			}
		}
		else {
			die "-r 'all' or -c 'column' WHERE -r 'row_value'.\n"}

	}
}

1;
