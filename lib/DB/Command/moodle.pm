package DB::Command::moodle;

# Last Edit: 2016 Jul 10, 11:39:19 AM
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

sub execute {
	my ($self, $opt, $args) = @_;

	my $data;
	$data = LoadFile
		"/home/drbean/moodle/populate/" . $opt->{f} . ".yaml" if $opt->{f};

	my $schema = DB::Schema->connect(
		"dbi:Pg:dbname=$opt->{d};port=$opt->{p}"
		, $opt->{u}
		); 

	if ( $opt->{a} eq "create") {
		my $class = $schema->resultset($opt->{t})->update_or_create($_) for @$data;
	}
	elsif ( $opt->{a} eq "delete" ) {
		$schema->resultset($opt->{t})->delete;
	}
}

1;
