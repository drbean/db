use utf8;
package DB::Schema::Result::MdlGradeItemsHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeItemsHistory - History of grade_items

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

=head1 TABLE: C<mdl_grade_items_history>

=cut

__PACKAGE__->table("mdl_grade_items_history");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_items_history_id_seq'

=head2 action

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 oldid

  data_type: 'bigint'
  is_nullable: 0

=head2 source

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

=head2 loggeduser

  data_type: 'bigint'
  is_nullable: 1

=head2 courseid

  data_type: 'bigint'
  is_nullable: 1

=head2 categoryid

  data_type: 'bigint'
  is_nullable: 1

=head2 itemname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 itemtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 itemmodule

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 iteminstance

  data_type: 'bigint'
  is_nullable: 1

=head2 itemnumber

  data_type: 'bigint'
  is_nullable: 1

=head2 iteminfo

  data_type: 'text'
  is_nullable: 1

=head2 idnumber

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 calculation

  data_type: 'text'
  is_nullable: 1

=head2 gradetype

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 grademax

  data_type: 'numeric'
  default_value: 100
  is_nullable: 0
  size: [10,5]

=head2 grademin

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 scaleid

  data_type: 'bigint'
  is_nullable: 1

=head2 outcomeid

  data_type: 'bigint'
  is_nullable: 1

=head2 gradepass

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 multfactor

  data_type: 'numeric'
  default_value: 1.0
  is_nullable: 0
  size: [10,5]

=head2 plusfactor

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 aggregationcoef

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 aggregationcoef2

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 sortorder

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 hidden

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 locked

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 locktime

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 needsupdate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 display

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 decimals

  data_type: 'smallint'
  is_nullable: 1

=head2 weightoverride

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
    sequence          => "mdl_grade_items_history_id_seq",
  },
  "action",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "oldid",
  { data_type => "bigint", is_nullable => 0 },
  "source",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
  "loggeduser",
  { data_type => "bigint", is_nullable => 1 },
  "courseid",
  { data_type => "bigint", is_nullable => 1 },
  "categoryid",
  { data_type => "bigint", is_nullable => 1 },
  "itemname",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "itemtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "itemmodule",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "iteminstance",
  { data_type => "bigint", is_nullable => 1 },
  "itemnumber",
  { data_type => "bigint", is_nullable => 1 },
  "iteminfo",
  { data_type => "text", is_nullable => 1 },
  "idnumber",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "calculation",
  { data_type => "text", is_nullable => 1 },
  "gradetype",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "grademax",
  {
    data_type => "numeric",
    default_value => 100,
    is_nullable => 0,
    size => [10, 5],
  },
  "grademin",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "scaleid",
  { data_type => "bigint", is_nullable => 1 },
  "outcomeid",
  { data_type => "bigint", is_nullable => 1 },
  "gradepass",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "multfactor",
  {
    data_type => "numeric",
    default_value => "1.0",
    is_nullable => 0,
    size => [10, 5],
  },
  "plusfactor",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "aggregationcoef",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "aggregationcoef2",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "hidden",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "locked",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "locktime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "needsupdate",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "display",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "decimals",
  { data_type => "smallint", is_nullable => 1 },
  "weightoverride",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CEiIpop5zuHLm0Vukw6Ytg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
