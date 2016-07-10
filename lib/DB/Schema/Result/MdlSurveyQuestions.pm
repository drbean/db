use utf8;
package DB::Schema::Result::MdlSurveyQuestions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlSurveyQuestions - the questions conforming one survey

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

=head1 TABLE: C<mdl_survey_questions>

=cut

__PACKAGE__->table("mdl_survey_questions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_survey_questions_id_seq'

=head2 text

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 shorttext

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 multi

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 intro

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 type

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 options

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_survey_questions_id_seq",
  },
  "text",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "shorttext",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "multi",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "intro",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "type",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "options",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Qh1+Tzogq5PvvrvyfIKBlg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
