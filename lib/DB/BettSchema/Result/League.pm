use utf8;
package DB::BettSchema::Result::League;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::League

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<league>

=cut

__PACKAGE__->table("league");

=head1 ACCESSORS

=head2 id

  data_type: 'text'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 1

=head2 field

  data_type: 'text'
  is_nullable: 1

=head2 genre

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "text", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 1 },
  "field",
  { data_type => "text", is_nullable => 1 },
  "genre",
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
  { "foreign.league" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 leaguegenre

Type: might_have

Related object: L<DB::BettSchema::Result::Leaguegenre>

=cut

__PACKAGE__->might_have(
  "leaguegenre",
  "DB::BettSchema::Result::Leaguegenre",
  { "foreign.league" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 members

Type: has_many

Related object: L<DB::BettSchema::Result::Member>

=cut

__PACKAGE__->has_many(
  "members",
  "DB::BettSchema::Result::Member",
  { "foreign.league" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 players

Type: many_to_many

Composing rels: L</members> -> player

=cut

__PACKAGE__->many_to_many("players", "members", "player");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xnu5pJvxE7D18LIz1tyZ/Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
