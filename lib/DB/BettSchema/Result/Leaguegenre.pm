use utf8;
package DB::BettSchema::Result::Leaguegenre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Leaguegenre

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<leaguegenre>

=cut

__PACKAGE__->table("leaguegenre");

=head1 ACCESSORS

=head2 league

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=head2 genre

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "league",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
  "genre",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</league>

=back

=cut

__PACKAGE__->set_primary_key("league");

=head1 RELATIONS

=head2 genre

Type: belongs_to

Related object: L<DB::BettSchema::Result::Genre>

=cut

__PACKAGE__->belongs_to(
  "genre",
  "DB::BettSchema::Result::Genre",
  { id => "genre" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 league

Type: belongs_to

Related object: L<DB::BettSchema::Result::League>

=cut

__PACKAGE__->belongs_to(
  "league",
  "DB::BettSchema::Result::League",
  { id => "league" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:m8gk2LrhrVTE3E+uQhvIXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
