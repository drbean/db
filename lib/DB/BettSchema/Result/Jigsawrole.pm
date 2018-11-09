use utf8;
package DB::BettSchema::Result::Jigsawrole;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Jigsawrole

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<jigsawrole>

=cut

__PACKAGE__->table("jigsawrole");

=head1 ACCESSORS

=head2 league

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

=head2 player

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 10

=head2 role

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=cut

__PACKAGE__->add_columns(
  "league",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "player",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 10 },
  "role",
  { data_type => "varchar", is_nullable => 0, size => 15 },
);

=head1 PRIMARY KEY

=over 4

=item * L</league>

=item * L</player>

=back

=cut

__PACKAGE__->set_primary_key("league", "player");

=head1 RELATIONS

=head2 league

Type: belongs_to

Related object: L<DB::BettSchema::Result::League>

=cut

__PACKAGE__->belongs_to(
  "league",
  "DB::BettSchema::Result::League",
  { id => "league" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 player

Type: belongs_to

Related object: L<DB::BettSchema::Result::Player>

=cut

__PACKAGE__->belongs_to(
  "player",
  "DB::BettSchema::Result::Player",
  { id => "player" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MBYQg/v5j99edIoCyoHouQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
