use utf8;
package DB::Schema::Result::MdlAssignGrades;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignGrades - Grading information about a single assignment submission.

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

=head1 TABLE: C<mdl_assign_grades>

=cut

__PACKAGE__->table("mdl_assign_grades");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assign_grades_id_seq'

=head2 assignment

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
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

=head2 grader

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 grade

  data_type: 'numeric'
  default_value: 0
  is_nullable: 1
  size: [10,5]

=head2 attemptnumber

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_assign_grades_id_seq",
  },
  "assignment",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "grader",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "grade",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 1,
    size => [10, 5],
  },
  "attemptnumber",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_assigrad_assuseatt_uix>

=over 4

=item * L</assignment>

=item * L</userid>

=item * L</attemptnumber>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_assigrad_assuseatt_uix",
  ["assignment", "userid", "attemptnumber"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oiLbNlOFNP01pewwQEAXsQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
