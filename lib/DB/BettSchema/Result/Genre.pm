use utf8;
package DB::BettSchema::Result::Genre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Genre

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<genre>

=cut

__PACKAGE__->table("genre");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'genre_id_seq'

=head2 value

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "genre_id_seq",
  },
  "value",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 leaguegenres

Type: has_many

Related object: L<DB::BettSchema::Result::Leaguegenre>

=cut

__PACKAGE__->has_many(
  "leaguegenres",
  "DB::BettSchema::Result::Leaguegenre",
  { "foreign.genre" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8jiyDqEZnO3WKzNylZsfgg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
