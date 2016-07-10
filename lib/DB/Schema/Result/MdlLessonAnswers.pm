use utf8;
package DB::Schema::Result::MdlLessonAnswers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLessonAnswers - Defines lesson_answers

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

=head1 TABLE: C<mdl_lesson_answers>

=cut

__PACKAGE__->table("mdl_lesson_answers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lesson_answers_id_seq'

=head2 lessonid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 pageid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 jumpto

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 grade

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 score

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 flags

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 answer

  data_type: 'text'
  is_nullable: 1

=head2 answerformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 response

  data_type: 'text'
  is_nullable: 1

=head2 responseformat

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
    sequence          => "mdl_lesson_answers_id_seq",
  },
  "lessonid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "pageid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "jumpto",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "grade",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "score",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "flags",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "answer",
  { data_type => "text", is_nullable => 1 },
  "answerformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "response",
  { data_type => "text", is_nullable => 1 },
  "responseformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:292/WNmMSSnCEUVfivUd4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
