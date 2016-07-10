use utf8;
package DB::Schema::Result::MdlQuizSlots;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizSlots

=head1 DESCRIPTION

Stores the question used in a quiz, with the order, and for each question, which page it appears on, and the maximum mark (weight).

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<mdl_quiz_slots>

=cut

__PACKAGE__->table("mdl_quiz_slots");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_slots_id_seq'

=head2 slot

  data_type: 'bigint'
  is_nullable: 0

=head2 quizid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 page

  data_type: 'bigint'
  is_nullable: 0

=head2 requireprevious

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 questionid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 maxmark

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [12,7]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_slots_id_seq",
  },
  "slot",
  { data_type => "bigint", is_nullable => 0 },
  "quizid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "page",
  { data_type => "bigint", is_nullable => 0 },
  "requireprevious",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "questionid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "maxmark",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [12, 7],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_quizslot_quislo_uix>

=over 4

=item * L</quizid>

=item * L</slot>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_quizslot_quislo_uix", ["quizid", "slot"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NEN9X8w2sdMUcNCcP9Gw+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
