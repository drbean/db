use utf8;
package DB::Schema::Result::MdlCompetencyCoursecompsetting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCompetencyCoursecompsetting

=head1 DESCRIPTION

This table contains the course specific settings for competencies.

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

=head1 TABLE: C<mdl_competency_coursecompsetting>

=cut

__PACKAGE__->table("mdl_competency_coursecompsetting");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_competency_coursecompsetting_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 pushratingstouserplans

  data_type: 'smallint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_competency_coursecompsetting_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "pushratingstouserplans",
  { data_type => "smallint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "usermodified",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_compcour_cou_uix>

=over 4

=item * L</courseid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_compcour_cou_uix", ["courseid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2ls6QNIgXAT61Q+wsssxHQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
