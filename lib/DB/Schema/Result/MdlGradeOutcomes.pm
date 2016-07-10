use utf8;
package DB::Schema::Result::MdlGradeOutcomes;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeOutcomes

=head1 DESCRIPTION

This table describes the outcomes used in the system. An outcome is a statement tied to a rubric scale from low to high, such as âNot met, Borderline, Metâ (stored as 0,1 or 2)

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

=head1 TABLE: C<mdl_grade_outcomes>

=cut

__PACKAGE__->table("mdl_grade_outcomes");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_outcomes_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 1

=head2 shortname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 fullname

  data_type: 'text'
  is_nullable: 0

=head2 scaleid

  data_type: 'bigint'
  is_nullable: 1

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

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
    sequence          => "mdl_grade_outcomes_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 1 },
  "shortname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "fullname",
  { data_type => "text", is_nullable => 0 },
  "scaleid",
  { data_type => "bigint", is_nullable => 1 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
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

=head2 C<mdl_gradoutc_cousho_uix>

=over 4

=item * L</courseid>

=item * L</shortname>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_gradoutc_cousho_uix", ["courseid", "shortname"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1Etlub60ah5WtQaGP7k5oA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
