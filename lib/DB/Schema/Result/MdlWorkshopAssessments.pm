use utf8;
package DB::Schema::Result::MdlWorkshopAssessments;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopAssessments

=head1 DESCRIPTION

Info about the made assessment and automatically calculated grade for it. The proposed grade can be overridden by teacher.

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

=head1 TABLE: C<mdl_workshop_assessments>

=cut

__PACKAGE__->table("mdl_workshop_assessments");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshop_assessments_id_seq'

=head2 submissionid

  data_type: 'bigint'
  is_nullable: 0

=head2 reviewerid

  data_type: 'bigint'
  is_nullable: 0

=head2 weight

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 grade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 gradinggrade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 gradinggradeover

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 gradinggradeoverby

  data_type: 'bigint'
  is_nullable: 1

=head2 feedbackauthor

  data_type: 'text'
  is_nullable: 1

=head2 feedbackauthorformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 feedbackauthorattachment

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 feedbackreviewer

  data_type: 'text'
  is_nullable: 1

=head2 feedbackreviewerformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshop_assessments_id_seq",
  },
  "submissionid",
  { data_type => "bigint", is_nullable => 0 },
  "reviewerid",
  { data_type => "bigint", is_nullable => 0 },
  "weight",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "grade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "gradinggrade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "gradinggradeover",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "gradinggradeoverby",
  { data_type => "bigint", is_nullable => 1 },
  "feedbackauthor",
  { data_type => "text", is_nullable => 1 },
  "feedbackauthorformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "feedbackauthorattachment",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "feedbackreviewer",
  { data_type => "text", is_nullable => 1 },
  "feedbackreviewerformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cRLSjg1twHh+ga6VXXwnTQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
