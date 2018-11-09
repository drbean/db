use utf8;
package DB::BettSchema::Result::Role;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Role

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<role>

=cut

__PACKAGE__->table("role");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'role_id_seq'

=head2 role

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "role_id_seq",
  },
  "role",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 rolebearers

Type: has_many

Related object: L<DB::BettSchema::Result::Rolebearer>

=cut

__PACKAGE__->has_many(
  "rolebearers",
  "DB::BettSchema::Result::Rolebearer",
  { "foreign.role" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 players

Type: many_to_many

Composing rels: L</rolebearers> -> player

=cut

__PACKAGE__->many_to_many("players", "rolebearers", "player");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DJR8roa29TKFq/Pal9LCTw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
