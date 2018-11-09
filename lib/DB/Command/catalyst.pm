package DB::Command::catalyst;

# Last Edit: 2018 Nov 09, 08:30:58 PM
# $Id: /cloze/branches/ctest/dic.pl 1134 2007-03-17T11:05:37.500624Z greg  $

use strict;
use warnings;

use DB -command;
sub usage_desc { "db catalyst -p PORT,ie,cluster -u USER -w PASSWD -d DATABASE -t TABLE -f FILE -a ACTION [-c COLUMN -r ROW]"}

sub opt_spec  {
	return (
		["p=s", "port"]
		, ["u=s", "user"]
		, ["w=s", "password"]
		, ["d=s", "database"]
		, ["t=s", "table"]
		, ["f=s", "file"]
		, ["a=s", "action"]
		, ["k=s", "key"]
		, ["v=s", "value"]
		, ["s=s", "select"]
	);
}

use IO::All;
use YAML qw/LoadFile/;
use DB::BettSchema;

sub execute {
	my ($self, $opt, $args) = @_;

	my ($port, $user, $password, $database, $table, $file, $action, $key, $value, $select) = @$opt{qw/p u w d t f a k v s/};
	my $data;
	$data = LoadFile "/var/lib/moodle/populate/$file.yaml" if $file;

	my $schema = DB::BettSchema->connect(
		"dbi:Pg:dbname=$database;port=$port"
		, $user
		); 
	die "user $user of dbi:Pg:dbname=$database;port=$port;password=$password?"
		unless $schema;

	(my $source = $table) =~ s/(\w+)/\u$1/g;
	my $resultset = $schema->resultset($source);
	die "\"$source\" table?" unless $resultset;

	if ( $action eq "create") {
		my $class = $resultset->update_or_create($_) for @$data;
	}
	if ( $action eq "delete" ) {
		my $all_rows = $resultset;
		if ( $value and $value eq "all" ) {
			$all_rows->delete;
		}
		elsif ( $key and $value ) {
			my $some_rows = $resultset->search({ $key => $value });
			$some_rows->delete();
		}
		else {
			die "-v 'all' or -k 'key' WHERE -v 'row_value'.\n"}

	}
	if ( $action eq "select" ) {
		my $io = io('-');
		# $io->autoflush;
		$io->print("action: $action\n");
		my $all_rows = $resultset;
		if ( $value and $value eq "all" ) {
			$io->append("table: $source\trow: $value\n");
			while ( my $row_data = $all_rows->next ) {
				$io->append("$value\t" . $row_data->id . "\n");
			}
		}
		elsif ( $key and $value and $select ) {
			my ( %key_value, @key, @value );
			if ( @key = split /,/, $key and @value = split /,/, $value and scalar @key == scalar @value )
			{
				%key_value = map { $key[$_] => $value[$_] } 0..$#key;
			}
			else {
				%key_value = ( $key => $value );
			}
			my $some_rows = $all_rows->search( \%key_value );
			$" = "\t";
			my @columns;
			if ( $select eq "all" ) {
				@columns = $some_rows->result_source->columns;
			}
			else {
				@columns = split /,/, $select ;
			}
			$io->append("table: $source\tkey: $key\tvalue: $value\t select: @columns\n");
			$io->append("$key\t@columns\n");
			while ( my $row = $some_rows->next ) {
				my @values;
				for my $column ( @columns ) {
					my $other_value = $row->get_column( $column ); 
					$other_value //= "NULL";
					push @values, $other_value;
				}
				$io->append("$value\t@values\n");
			}
		}
		else {
			die "-v 'all' or -k 'key' SELECT -s 'extra,etc' WHERE -k 'column' = -v 'row_value'.\n"}

	}
}

1;
