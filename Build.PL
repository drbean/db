use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'DB',
    license             => 'perl',
    dist_author         => 'Dr Bean <drbean, followed by the at mark (@), cpan, then a dot, and finally, org>',
    dist_version   => 0.1,
    dist_abstract => 
	    'perl scripts to populate db tables, etc',
    requires => {
	    'App::Cmd' => 0,
	    'YAML' => 0,
	    'Carp' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    create_makefile_pl => 'traditional',
    script_files        => [qw(
                            script/db
                                )],

    add_to_cleanup      => [ 'DB-*' ],
    meta_merge => {
      resources => {
          bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=DB',
          repository  => 'http://github.com/drbean/db'
		}
	},
);

$builder->create_build_script();
