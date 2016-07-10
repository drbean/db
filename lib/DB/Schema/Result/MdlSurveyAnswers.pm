use utf8;
package DB::Schema::Result::MdlSurveyAnswers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlSurveyAnswers - the answers to each questions filled by the users

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

=head1 TABLE: C<mdl_survey_answers>

=cut

__PACKAGE__->table("mdl_survey_answers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_survey_answers_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 survey

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 question

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 time

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 answer1

  data_type: 'text'
  is_nullable: 0

=head2 answer2

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_survey_answers_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "survey",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "question",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "time",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "answer1",
  { data_type => "text", is_nullable => 0 },
  "answer2",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:w+4u2sf92RSjF8S2HHXLmg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
