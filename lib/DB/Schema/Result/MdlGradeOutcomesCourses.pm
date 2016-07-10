use utf8;
package DB::Schema::Result::MdlGradeOutcomesCourses;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeOutcomesCourses - stores what outcomes are used in what courses.

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

=head1 TABLE: C<mdl_grade_outcomes_courses>

=cut

__PACKAGE__->table("mdl_grade_outcomes_courses");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_outcomes_courses_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 outcomeid

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_grade_outcomes_courses_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "outcomeid",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_gradoutccour_couout_uix>

=over 4

=item * L</courseid>

=item * L</outcomeid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_gradoutccour_couout_uix", ["courseid", "outcomeid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k0dZctvj5DX2dsFPPY5OsQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
