use utf8;
package DB::Schema::Result::MdlQuestionAnswers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionAnswers - Answers, with a fractional grade (0-1) and feedback

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

=head1 TABLE: C<mdl_question_answers>

=cut

__PACKAGE__->table("mdl_question_answers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_answers_id_seq'

=head2 question

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 answer

  data_type: 'text'
  is_nullable: 0

=head2 answerformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 fraction

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [12,7]

=head2 feedback

  data_type: 'text'
  is_nullable: 0

=head2 feedbackformat

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
    sequence          => "mdl_question_answers_id_seq",
  },
  "question",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "answer",
  { data_type => "text", is_nullable => 0 },
  "answerformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "fraction",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [12, 7],
  },
  "feedback",
  { data_type => "text", is_nullable => 0 },
  "feedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EmZ+62T7A7c9T46xTYTOXw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
