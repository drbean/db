use utf8;
package DB::BettSchema::Result::Wh;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Wh

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<wh>

=cut

__PACKAGE__->table("wh");

=head1 ACCESSORS

=head2 exercise

  data_type: 'text'
  is_nullable: 0

=head2 player

  data_type: 'text'
  is_nullable: 0

=head2 league

  data_type: 'text'
  is_nullable: 0

=head2 try

  data_type: 'integer'
  is_nullable: 1

=head2 score

  data_type: 'integer'
  is_nullable: 1

=head2 questionchance

  data_type: 'integer'
  is_nullable: 1

=head2 answerchance

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "exercise",
  { data_type => "text", is_nullable => 0 },
  "player",
  { data_type => "text", is_nullable => 0 },
  "league",
  { data_type => "text", is_nullable => 0 },
  "try",
  { data_type => "integer", is_nullable => 1 },
  "score",
  { data_type => "integer", is_nullable => 1 },
  "questionchance",
  { data_type => "integer", is_nullable => 1 },
  "answerchance",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</player>

=item * L</league>

=item * L</exercise>

=back

=cut

__PACKAGE__->set_primary_key("player", "league", "exercise");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ArvC1qlgZ/pjuAgmR6iX2A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
