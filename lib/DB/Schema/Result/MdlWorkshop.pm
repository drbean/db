use utf8;
package DB::Schema::Result::MdlWorkshop;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshop

=head1 DESCRIPTION

This table keeps information about the module instances and their settings

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

=head1 TABLE: C<mdl_workshop>

=cut

__PACKAGE__->table("mdl_workshop");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshop_id_seq'

=head2 course

  data_type: 'bigint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 1

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 instructauthors

  data_type: 'text'
  is_nullable: 1

=head2 instructauthorsformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 instructreviewers

  data_type: 'text'
  is_nullable: 1

=head2 instructreviewersformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 phase

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 useexamples

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 usepeerassessment

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 useselfassessment

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 grade

  data_type: 'numeric'
  default_value: 80
  is_nullable: 1
  size: [10,5]

=head2 gradinggrade

  data_type: 'numeric'
  default_value: 20
  is_nullable: 1
  size: [10,5]

=head2 strategy

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 evaluation

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 gradedecimals

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 nattachments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 submissionfiletypes

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 latesubmissions

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 maxbytes

  data_type: 'bigint'
  default_value: 100000
  is_nullable: 1

=head2 examplesmode

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 submissionstart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 submissionend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 assessmentstart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 assessmentend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 phaseswitchassessment

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 conclusion

  data_type: 'text'
  is_nullable: 1

=head2 conclusionformat

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 overallfeedbackmode

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=head2 overallfeedbackfiles

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 overallfeedbackfiletypes

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 overallfeedbackmaxbytes

  data_type: 'bigint'
  default_value: 100000
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshop_id_seq",
  },
  "course",
  { data_type => "bigint", is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 1 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "instructauthors",
  { data_type => "text", is_nullable => 1 },
  "instructauthorsformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "instructreviewers",
  { data_type => "text", is_nullable => 1 },
  "instructreviewersformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "phase",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "useexamples",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "usepeerassessment",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "useselfassessment",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "grade",
  {
    data_type => "numeric",
    default_value => 80,
    is_nullable => 1,
    size => [10, 5],
  },
  "gradinggrade",
  {
    data_type => "numeric",
    default_value => 20,
    is_nullable => 1,
    size => [10, 5],
  },
  "strategy",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "evaluation",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "gradedecimals",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "nattachments",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "submissionfiletypes",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "latesubmissions",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "maxbytes",
  { data_type => "bigint", default_value => 100000, is_nullable => 1 },
  "examplesmode",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "submissionstart",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "submissionend",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "assessmentstart",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "assessmentend",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "phaseswitchassessment",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "conclusion",
  { data_type => "text", is_nullable => 1 },
  "conclusionformat",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "overallfeedbackmode",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
  "overallfeedbackfiles",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "overallfeedbackfiletypes",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "overallfeedbackmaxbytes",
  { data_type => "bigint", default_value => 100000, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TI2gG8nk/5k8aiZ7QOf9cg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
