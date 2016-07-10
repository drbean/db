use utf8;
package DB::Schema::Result::MdlQuestionGapselect;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionGapselect - Defines select missing words questions

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

=head1 TABLE: C<mdl_question_gapselect>

=cut

__PACKAGE__->table("mdl_question_gapselect");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_gapselect_id_seq'

=head2 questionid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 shuffleanswers

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 correctfeedback

  data_type: 'text'
  is_nullable: 0

=head2 correctfeedbackformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 partiallycorrectfeedback

  data_type: 'text'
  is_nullable: 0

=head2 partiallycorrectfeedbackformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 incorrectfeedback

  data_type: 'text'
  is_nullable: 0

=head2 incorrectfeedbackformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 shownumcorrect

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
    sequence          => "mdl_question_gapselect_id_seq",
  },
  "questionid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "shuffleanswers",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "correctfeedback",
  { data_type => "text", is_nullable => 0 },
  "correctfeedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "partiallycorrectfeedback",
  { data_type => "text", is_nullable => 0 },
  "partiallycorrectfeedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "incorrectfeedback",
  { data_type => "text", is_nullable => 0 },
  "incorrectfeedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "shownumcorrect",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SZExIdYezD/Zac7DPgk3dA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
