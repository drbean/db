use utf8;
package DB::BettSchema::Result::Play;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Play

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<play>

=cut

__PACKAGE__->table("play");

=head1 ACCESSORS

=head2 question

  data_type: 'text'
  is_nullable: 0

=head2 answer

  data_type: 'text'
  is_nullable: 1

=head2 player

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=head2 league

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=head2 course

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

=head2 exercise

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "question",
  { data_type => "text", is_nullable => 0 },
  "answer",
  { data_type => "text", is_nullable => 1 },
  "player",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
  "league",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
  "course",
  { data_type => "text", is_nullable => 0 },
  "try",
  { data_type => "integer", is_nullable => 1 },
  "score",
  { data_type => "integer", is_nullable => 1 },
  "questionchance",
  { data_type => "integer", is_nullable => 1 },
  "answerchance",
  { data_type => "integer", is_nullable => 1 },
  "exercise",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</player>

=item * L</league>

=item * L</course>

=item * L</question>

=item * L</exercise>

=back

=cut

__PACKAGE__->set_primary_key("player", "league", "course", "question", "exercise");

=head1 RELATIONS

=head2 member

Type: belongs_to

Related object: L<DB::BettSchema::Result::Member>

=cut

__PACKAGE__->belongs_to(
  "member",
  "DB::BettSchema::Result::Member",
  { league => "league", player => "player" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:g0jiO8dOgi45JsTuGXfRrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
