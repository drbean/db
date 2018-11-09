use utf8;
package DB::BettSchema::Result::Member;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Member

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<member>

=cut

__PACKAGE__->table("member");

=head1 ACCESSORS

=head2 league

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=head2 player

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "league",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
  "player",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</player>

=item * L</league>

=back

=cut

__PACKAGE__->set_primary_key("player", "league");

=head1 RELATIONS

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

=head2 player

Type: belongs_to

Related object: L<DB::BettSchema::Result::Player>

=cut

__PACKAGE__->belongs_to(
  "player",
  "DB::BettSchema::Result::Player",
  { id => "player" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 plays

Type: has_many

Related object: L<DB::BettSchema::Result::Play>

=cut

__PACKAGE__->has_many(
  "plays",
  "DB::BettSchema::Result::Play",
  {
    "foreign.league" => "self.league",
    "foreign.player" => "self.player",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s031zd58NzEg8CnjDStJKA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
