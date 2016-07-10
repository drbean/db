use utf8;
package DB::Schema::Result::MdlScorm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScorm - each table is one SCORM module and its configuration

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

=head1 TABLE: C<mdl_scorm>

=cut

__PACKAGE__->table("mdl_scorm");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 scormtype

  data_type: 'varchar'
  default_value: 'local'
  is_nullable: 0
  size: 50

=head2 reference

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 0

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 9

=head2 maxgrade

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 grademethod

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 whatgrade

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 maxattempt

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 forcecompleted

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 forcenewattempt

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 lastattemptlock

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 masteryoverride

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 displayattemptstatus

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 displaycoursestructure

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 updatefreq

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 sha1hash

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 md5hash

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 revision

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 launch

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 skipview

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 hidebrowse

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 hidetoc

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 nav

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 navpositionleft

  data_type: 'bigint'
  default_value: -100
  is_nullable: 1

=head2 navpositiontop

  data_type: 'bigint'
  default_value: -100
  is_nullable: 1

=head2 auto

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 popup

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 options

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 width

  data_type: 'bigint'
  default_value: 100
  is_nullable: 0

=head2 height

  data_type: 'bigint'
  default_value: 600
  is_nullable: 0

=head2 timeopen

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeclose

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 completionstatusrequired

  data_type: 'smallint'
  is_nullable: 1

=head2 completionscorerequired

  data_type: 'smallint'
  is_nullable: 1

=head2 displayactivityname

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 autocommit

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
    sequence          => "mdl_scorm_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "scormtype",
  {
    data_type => "varchar",
    default_value => "local",
    is_nullable => 0,
    size => 50,
  },
  "reference",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "version",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 9 },
  "maxgrade",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "grademethod",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "whatgrade",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "maxattempt",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "forcecompleted",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "forcenewattempt",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "lastattemptlock",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "masteryoverride",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "displayattemptstatus",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "displaycoursestructure",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "updatefreq",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "sha1hash",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "md5hash",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "revision",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "launch",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "skipview",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "hidebrowse",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "hidetoc",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "nav",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "navpositionleft",
  { data_type => "bigint", default_value => -100, is_nullable => 1 },
  "navpositiontop",
  { data_type => "bigint", default_value => -100, is_nullable => 1 },
  "auto",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "popup",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "options",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "width",
  { data_type => "bigint", default_value => 100, is_nullable => 0 },
  "height",
  { data_type => "bigint", default_value => 600, is_nullable => 0 },
  "timeopen",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeclose",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "completionstatusrequired",
  { data_type => "smallint", is_nullable => 1 },
  "completionscorerequired",
  { data_type => "smallint", is_nullable => 1 },
  "displayactivityname",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "autocommit",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rxE9JHlVRz4Ss99S+5i8lg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
