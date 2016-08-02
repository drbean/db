package DB::Command::moodle;

# Last Edit: 2016 Aug 02, 10:58:15 PM
# $Id: /cloze/branches/ctest/dic.pl 1134 2007-03-17T11:05:37.500624Z greg  $

use strict;
use warnings;

use DB -command;
sub usage_desc { "db moodle -p PORT,ie,cluster -u USER -d DATABASE -t TABLE -f FILE -a ACTION" }

sub opt_spec  {
	return (
		["p=s", "port"]
		, ["u=s", "user"]
		, ["d=s", "database"]
		, ["t=s", "table"]
		, ["f=s", "file"]
		, ["a=s", "action"]
	);
}

use IO::All;
use YAML qw/LoadFile/;
use DB::Schema;
use Encode;

sub execute {
	my ($self, $opt, $args) = @_;

	my $data;
	$data = LoadFile
		"/home/drbean/moodle/populate/" . $opt->{f} . ".yaml" if $opt->{f};

	my $schema = DB::Schema->connect(
		"dbi:Pg:dbname=$opt->{d};port=$opt->{p}"
		, $opt->{u}
		); 

	if ( $opt->{a} and $opt->{a} eq "create") {
		my $class = $schema->resultset($opt->{t})->update_or_create($_) for @$data;
	}
	elsif ( $opt->{a} and $opt->{a} eq "delete" ) {
		$schema->resultset($opt->{t})->delete;
	}
	else {
		my @show;
		my $rows = $schema->resultset($opt->{t});
		my @columns = $rows->result_source->columns;
		my $top_row; $top_row .= "$_\t" for @columns;
		io('-')->print(  $top_row . "\n" );
		while (my $row = $rows->next) {
			my $show_row;
			for my $column ( @columns ) {
				if ( defined $row->$column  ) {
					$show_row .= $row->$column . "\t";
				}
			}
			io('-')->print(  Encode::encode( "UTF-8", "$show_row\n" ) );
		}
	}
}

1;
