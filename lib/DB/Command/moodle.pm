package DB::Command::moodle;

# Last Edit: 2017 Jan 26, 10:23:17 PM
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
		, ["s=s", "select"]
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

	my $table = "Mdl_" . $opt->{t};
	die "\"$table\" table?" unless $table;
	my $source = $table ~= s/_(\w)/\u$1/g;
	if ( $opt->{a} eq "create") {
		my $class = $schema->resultset($source)->update_or_create($_) for @$data;
	}
	if ( $opt->{a} eq "delete" ) {
		my $all_rows = $schema->resultset($source);
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
		my $io = io('-');
		# $io->autoflush;
		$io->print("action: $opt->{a}\n");
		my $all_rows = $schema->resultset($source);
		if ( $opt->{r} and $opt->{r} eq "all" ) {
			$io->append("table: $source\trow: $opt->{r}\n");
			while ( my $row = $all_rows->next ) {
				$io->append("$opt->{r}:\t" . $row->id . "\n");
			}
		}
		elsif ( $opt->{c} and $opt->{r} and $opt->{s}) {
			my @select = split /,/, $opt->{s};
			my $some_rows = $all_rows->search({ $opt->{c} => $opt->{r} });
			$" = "\t";
			$io->append("table: $source\tcolumn: $opt->{c}\trow: $opt->{r}\t select: @select\n");
			$io->append("$opt->{c}\t@select\n");
			my $column = $opt->{c};
			while ( my $row = $some_rows->next ) {
				my @values;
				push @values, $row->get_column( $_ ) for @select;
				$io->append($row->$column . "\t@values\n");
			}
		}
		else {
			die "-r 'all' or -c 'column' SELECT -s 'extra,etc' WHERE -c 'column' = -r 'row_value'.\n"}

	}
}

1;
