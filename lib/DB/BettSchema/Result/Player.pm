use utf8;
package DB::BettSchema::Result::Player;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Player

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<player>

=cut

__PACKAGE__->table("player");

=head1 ACCESSORS

=head2 id

  data_type: 'text'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 1

=head2 password

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "text", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 1 },
  "password",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 jigsawroles

Type: has_many

Related object: L<DB::BettSchema::Result::Jigsawrole>

=cut

__PACKAGE__->has_many(
  "jigsawroles",
  "DB::BettSchema::Result::Jigsawrole",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 members

Type: has_many

Related object: L<DB::BettSchema::Result::Member>

=cut

__PACKAGE__->has_many(
  "members",
  "DB::BettSchema::Result::Member",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 rolebearers

Type: has_many

Related object: L<DB::BettSchema::Result::Rolebearer>

=cut

__PACKAGE__->has_many(
  "rolebearers",
  "DB::BettSchema::Result::Rolebearer",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 leagues

Type: many_to_many

Composing rels: L</members> -> league

=cut

__PACKAGE__->many_to_many("leagues", "members", "league");

=head2 roles

Type: many_to_many

Composing rels: L</rolebearers> -> role

=cut

__PACKAGE__->many_to_many("roles", "rolebearers", "role");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:veOhAy6BbWhdebfcgbAwJg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
