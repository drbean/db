use utf8;
package DB::Schema::Result::MdlWorkshopSubmissions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopSubmissions

=head1 DESCRIPTION

Info about the submission and the aggregation of the grade for submission, grade for assessment and final grade. Both grade for submission and grade for assessment can be overridden by teacher. Final grade is always the sum of them. All grades are st

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

=head1 TABLE: C<mdl_workshop_submissions>

=cut

__PACKAGE__->table("mdl_workshop_submissions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshop_submissions_id_seq'

=head2 workshopid

  data_type: 'bigint'
  is_nullable: 0

=head2 example

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 authorid

  data_type: 'bigint'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 content

  data_type: 'text'
  is_nullable: 1

=head2 contentformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 contenttrust

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 attachment

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 grade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 gradeover

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 gradeoverby

  data_type: 'bigint'
  is_nullable: 1

=head2 feedbackauthor

  data_type: 'text'
  is_nullable: 1

=head2 feedbackauthorformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 timegraded

  data_type: 'bigint'
  is_nullable: 1

=head2 published

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 late

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
    sequence          => "mdl_workshop_submissions_id_seq",
  },
  "workshopid",
  { data_type => "bigint", is_nullable => 0 },
  "example",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "authorid",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "content",
  { data_type => "text", is_nullable => 1 },
  "contentformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "contenttrust",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "attachment",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "grade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "gradeover",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "gradeoverby",
  { data_type => "bigint", is_nullable => 1 },
  "feedbackauthor",
  { data_type => "text", is_nullable => 1 },
  "feedbackauthorformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "timegraded",
  { data_type => "bigint", is_nullable => 1 },
  "published",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "late",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mLcrFZPl5jERghC72kir2g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
