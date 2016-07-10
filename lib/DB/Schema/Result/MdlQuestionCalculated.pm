use utf8;
package DB::Schema::Result::MdlQuestionCalculated;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionCalculated - Options for questions of type calculated

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

=head1 TABLE: C<mdl_question_calculated>

=cut

__PACKAGE__->table("mdl_question_calculated");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_calculated_id_seq'

=head2 question

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 answer

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 tolerance

  data_type: 'varchar'
  default_value: 0.0
  is_nullable: 0
  size: 20

=head2 tolerancetype

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 correctanswerlength

  data_type: 'bigint'
  default_value: 2
  is_nullable: 0

=head2 correctanswerformat

  data_type: 'bigint'
  default_value: 2
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_calculated_id_seq",
  },
  "question",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "answer",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "tolerance",
  {
    data_type => "varchar",
    default_value => "0.0",
    is_nullable => 0,
    size => 20,
  },
  "tolerancetype",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "correctanswerlength",
  { data_type => "bigint", default_value => 2, is_nullable => 0 },
  "correctanswerformat",
  { data_type => "bigint", default_value => 2, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:InlvDsxjEOpoAhCoxht1gQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
