use utf8;
package DB::Schema::Result::MdlGradeCategories;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeCategories

=head1 DESCRIPTION

This table keeps information about categories, used for grouping items.

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

=head1 TABLE: C<mdl_grade_categories>

=cut

__PACKAGE__->table("mdl_grade_categories");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_categories_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 parent

  data_type: 'bigint'
  is_nullable: 1

=head2 depth

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 path

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fullname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 aggregation

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 keephigh

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 droplow

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 aggregateonlygraded

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 aggregateoutcomes

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 hidden

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
    sequence          => "mdl_grade_categories_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "parent",
  { data_type => "bigint", is_nullable => 1 },
  "depth",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "path",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fullname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "aggregation",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "keephigh",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "droplow",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "aggregateonlygraded",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "aggregateoutcomes",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "hidden",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kMMKTSdZjDNpv8gTsMzkXA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
