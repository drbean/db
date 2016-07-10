use utf8;
package DB::Schema::Result::MdlAssign;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssign

=head1 DESCRIPTION

This table saves information about an instance of mod_assign in a course.

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

=head1 TABLE: C<mdl_assign>

=cut

__PACKAGE__->table("mdl_assign");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assign_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 0

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 alwaysshowdescription

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 nosubmissions

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 submissiondrafts

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 sendnotifications

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 sendlatenotifications

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 duedate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 allowsubmissionsfromdate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 grade

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 requiresubmissionstatement

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 completionsubmit

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 cutoffdate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 teamsubmission

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 requireallteammemberssubmit

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 teamsubmissiongroupingid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 blindmarking

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 revealidentities

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 attemptreopenmethod

  data_type: 'varchar'
  default_value: 'none'
  is_nullable: 0
  size: 10

=head2 maxattempts

  data_type: 'integer'
  default_value: -1
  is_nullable: 0

=head2 markingworkflow

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 markingallocation

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 sendstudentnotifications

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 preventsubmissionnotingroup

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
    sequence          => "mdl_assign_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "alwaysshowdescription",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "nosubmissions",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "submissiondrafts",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "sendnotifications",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "sendlatenotifications",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "duedate",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "allowsubmissionsfromdate",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "grade",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "requiresubmissionstatement",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "completionsubmit",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "cutoffdate",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "teamsubmission",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "requireallteammemberssubmit",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "teamsubmissiongroupingid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "blindmarking",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "revealidentities",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "attemptreopenmethod",
  {
    data_type => "varchar",
    default_value => "none",
    is_nullable => 0,
    size => 10,
  },
  "maxattempts",
  { data_type => "integer", default_value => -1, is_nullable => 0 },
  "markingworkflow",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "markingallocation",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "sendstudentnotifications",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "preventsubmissionnotingroup",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5Raa/KXgb6IXFMHgRK5ZLA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
