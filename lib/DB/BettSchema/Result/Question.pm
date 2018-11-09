use utf8;
package DB::BettSchema::Result::Question;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Question

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<question>

=cut

__PACKAGE__->table("question");

=head1 ACCESSORS

=head2 player

  data_type: 'text'
  is_nullable: 0

=head2 parsed

  data_type: 'text'
  is_nullable: 0

=head2 league

  data_type: 'text'
  is_nullable: 0

=head2 exercise

  data_type: 'text'
  is_nullable: 0

=head2 course

  data_type: 'text'
  is_nullable: 0

=head2 quoted

  data_type: 'text'
  is_nullable: 0

=head2 grammatical

  data_type: 'boolean'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "player",
  { data_type => "text", is_nullable => 0 },
  "parsed",
  { data_type => "text", is_nullable => 0 },
  "league",
  { data_type => "text", is_nullable => 0 },
  "exercise",
  { data_type => "text", is_nullable => 0 },
  "course",
  { data_type => "text", is_nullable => 0 },
  "quoted",
  { data_type => "text", is_nullable => 0 },
  "grammatical",
  { data_type => "boolean", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</parsed>

=item * L</exercise>

=item * L</league>

=back

=cut

__PACKAGE__->set_primary_key("parsed", "exercise", "league");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WjwUpmfvMLlXHoZr4DsAhg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
