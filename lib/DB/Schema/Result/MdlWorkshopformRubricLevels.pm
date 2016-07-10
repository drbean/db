use utf8;
package DB::Schema::Result::MdlWorkshopformRubricLevels;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopformRubricLevels - The definition of rubric rating scales

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

=head1 TABLE: C<mdl_workshopform_rubric_levels>

=cut

__PACKAGE__->table("mdl_workshopform_rubric_levels");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshopform_rubric_levels_id_seq'

=head2 dimensionid

  data_type: 'bigint'
  is_nullable: 0

=head2 grade

  data_type: 'numeric'
  is_nullable: 0
  size: [10,5]

=head2 definition

  data_type: 'text'
  is_nullable: 1

=head2 definitionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshopform_rubric_levels_id_seq",
  },
  "dimensionid",
  { data_type => "bigint", is_nullable => 0 },
  "grade",
  { data_type => "numeric", is_nullable => 0, size => [10, 5] },
  "definition",
  { data_type => "text", is_nullable => 1 },
  "definitionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6E96QPHXZUU8ldWB9owh+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
