use utf8;
package DB::Schema::Result::MdlCompetencyUsercompcourse;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCompetencyUsercompcourse - User competencies in a course

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

=head1 TABLE: C<mdl_competency_usercompcourse>

=cut

__PACKAGE__->table("mdl_competency_usercompcourse");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_competency_usercompcourse_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 competencyid

  data_type: 'bigint'
  is_nullable: 0

=head2 proficiency

  data_type: 'smallint'
  is_nullable: 1

=head2 grade

  data_type: 'bigint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_competency_usercompcourse_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "competencyid",
  { data_type => "bigint", is_nullable => 0 },
  "proficiency",
  { data_type => "smallint", is_nullable => 1 },
  "grade",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
  "usermodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_compuser_usecoucom_uix>

=over 4

=item * L</userid>

=item * L</courseid>

=item * L</competencyid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_compuser_usecoucom_uix",
  ["userid", "courseid", "competencyid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KqIVRzHZlqiuH9CQmAZBfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
