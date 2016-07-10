use utf8;
package DB::Schema::Result::MdlGradingAreas;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradingAreas

=head1 DESCRIPTION

Identifies gradable areas where advanced grading can happen. For each area, the current active plugin can be set.

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

=head1 TABLE: C<mdl_grading_areas>

=cut

__PACKAGE__->table("mdl_grading_areas");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grading_areas_id_seq'

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 areaname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 activemethod

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_grading_areas_id_seq",
  },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "areaname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "activemethod",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_gradarea_concomare_uix>

=over 4

=item * L</contextid>

=item * L</component>

=item * L</areaname>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_gradarea_concomare_uix",
  ["contextid", "component", "areaname"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7R+iZcy2plGWQpz3LJxmnQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
