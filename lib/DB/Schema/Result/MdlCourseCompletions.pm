use utf8;
package DB::Schema::Result::MdlCourseCompletions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseCompletions - Course completion records

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

=head1 TABLE: C<mdl_course_completions>

=cut

__PACKAGE__->table("mdl_course_completions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_completions_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeenrolled

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timestarted

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timecompleted

  data_type: 'bigint'
  is_nullable: 1

=head2 reaggregate

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
    sequence          => "mdl_course_completions_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeenrolled",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timestarted",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timecompleted",
  { data_type => "bigint", is_nullable => 1 },
  "reaggregate",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_courcomp_usecou_uix>

=over 4

=item * L</userid>

=item * L</course>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_courcomp_usecou_uix", ["userid", "course"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Fj0Eu7TZeHotGEjVHV3WSg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
