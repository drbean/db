package DB::Command::moodle;

# Last Edit: 2017 Feb 19, 12:53:20 PM
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

	my ($port, $user, $password, $database, $table, $file, $action, $column, $row, $select) = @$opt{qw/p u w d t f a c r s/};
	my $data;
	$data = LoadFile "/var/lib/moodle/populate/$file.yaml" if $file;

	my $schema = DB::Schema->connect(
		"dbi:Pg:dbname=$database;port=$port;password=$password"
		, $user
		); 
	die "user $user of dbi:Pg:dbname=$database;port=$port;password=$password?"
		unless $schema;

	my $mdl_table = "Mdl_" . $table;
	(my $source = $mdl_table) =~ s/_(\w)/\u$1/g;
	my $resultset = $schema->resultset($source);
	die "\"$source\" table?" unless $resultset;

	if ( $action eq "create") {
		my $class = $resultset->update_or_create($_) for @$data;
	}
	if ( $action eq "delete" ) {
		my $all_rows = $resultset;
		if ( $row and $row eq "all" ) {
			$all_rows->delete;
		}
		elsif ( $column and $row ) {
			my $some_rows = $resultset->search({ $column => $row });
			$some_rows->delete();
		}
		else {
			die "-r 'all' or -c 'column' WHERE -r 'row_value'.\n"}

	}
	if ( $action eq "select" ) {
		my $io = io('-');
		# $io->autoflush;
		$io->print("action: $action\n");
		my $all_rows = $resultset;
		if ( $row and $row eq "all" ) {
			$io->append("table: $source\trow: $row\n");
			while ( my $row_data = $all_rows->next ) {
				$io->append("$row\t" . $row_data->id . "\n");
			}
		}
		elsif ( $column and $row and $select ) {
			my @select = split /,/, $select ;
			my $some_rows = $all_rows->search({ $column => $row });
			$" = "\t";
			$io->append("table: $source\tcolumn: $column\trow: $row\t select: @select\n");
			$io->append("$column\t@select\n");
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
