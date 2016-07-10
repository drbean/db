use utf8;
package DB::Schema::Result::MdlQuizSections;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizSections

=head1 DESCRIPTION

Stores sections of a quiz with section name (heading), from slot-number N and whether the question order should be shuffled.

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

=head1 TABLE: C<mdl_quiz_sections>

=cut

__PACKAGE__->table("mdl_quiz_sections");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_sections_id_seq'

=head2 quizid

  data_type: 'bigint'
  is_nullable: 0

=head2 firstslot

  data_type: 'bigint'
  is_nullable: 0

=head2 heading

  data_type: 'varchar'
  is_nullable: 1
  size: 1333

=head2 shufflequestions

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_sections_id_seq",
  },
  "quizid",
  { data_type => "bigint", is_nullable => 0 },
  "firstslot",
  { data_type => "bigint", is_nullable => 0 },
  "heading",
  { data_type => "varchar", is_nullable => 1, size => 1333 },
  "shufflequestions",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_quizsect_quifir_uix>

=over 4

=item * L</quizid>

=item * L</firstslot>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_quizsect_quifir_uix", ["quizid", "firstslot"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HHv6lzojWDGvB9AvpgZlLA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
