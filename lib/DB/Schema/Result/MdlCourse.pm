use utf8;
package DB::Schema::Result::MdlCourse;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourse - Central course table

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

=head1 TABLE: C<mdl_course>

=cut

__PACKAGE__->table("mdl_course");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_id_seq'

=head2 category

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 sortorder

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 fullname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 shortname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 idnumber

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 summary

  data_type: 'text'
  is_nullable: 1

=head2 summaryformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 format

  data_type: 'varchar'
  default_value: 'topics'
  is_nullable: 0
  size: 21

=head2 showgrades

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 newsitems

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 startdate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 marker

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 maxbytes

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 legacyfiles

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 showreports

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 visible

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 visibleold

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 groupmode

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 groupmodeforce

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 defaultgroupingid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lang

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 calendartype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 theme

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 requested

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 enablecompletion

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 completionnotify

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 cacherev

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
    sequence          => "mdl_course_id_seq",
  },
  "category",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "fullname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "shortname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "idnumber",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "summary",
  { data_type => "text", is_nullable => 1 },
  "summaryformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "format",
  {
    data_type => "varchar",
    default_value => "topics",
    is_nullable => 0,
    size => 21,
  },
  "showgrades",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "newsitems",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "startdate",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "marker",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "maxbytes",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "legacyfiles",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "showreports",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "visibleold",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "groupmode",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "groupmodeforce",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "defaultgroupingid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lang",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "calendartype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "theme",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "requested",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "enablecompletion",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "completionnotify",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "cacherev",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bG6wzvry2jebtgBqPnDt4w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
