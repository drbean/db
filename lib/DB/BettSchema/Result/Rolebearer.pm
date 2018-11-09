use utf8;
package DB::BettSchema::Result::Rolebearer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Rolebearer

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<rolebearer>

=cut

__PACKAGE__->table("rolebearer");

=head1 ACCESSORS

=head2 player

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=head2 role

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "player",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
  "role",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</player>

=item * L</role>

=back

=cut

__PACKAGE__->set_primary_key("player", "role");

=head1 RELATIONS

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

=head2 role

Type: belongs_to

Related object: L<DB::BettSchema::Result::Role>

=cut

__PACKAGE__->belongs_to(
  "role",
  "DB::BettSchema::Result::Role",
  { id => "role" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JCMdTVUwsZ2VuK4K/wehOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
