use utf8;
package DB::Schema::Result::MdlCourseCompletionCriteria;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseCompletionCriteria - Course completion criteria

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

=head1 TABLE: C<mdl_course_completion_criteria>

=cut

__PACKAGE__->table("mdl_course_completion_criteria");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_completion_criteria_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 criteriatype

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 module

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 moduleinstance

  data_type: 'bigint'
  is_nullable: 1

=head2 courseinstance

  data_type: 'bigint'
  is_nullable: 1

=head2 enrolperiod

  data_type: 'bigint'
  is_nullable: 1

=head2 timeend

  data_type: 'bigint'
  is_nullable: 1

=head2 gradepass

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 role

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_course_completion_criteria_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "criteriatype",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "module",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "moduleinstance",
  { data_type => "bigint", is_nullable => 1 },
  "courseinstance",
  { data_type => "bigint", is_nullable => 1 },
  "enrolperiod",
  { data_type => "bigint", is_nullable => 1 },
  "timeend",
  { data_type => "bigint", is_nullable => 1 },
  "gradepass",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "role",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ddlqfdsC3rXt/4NCX+iHVw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
