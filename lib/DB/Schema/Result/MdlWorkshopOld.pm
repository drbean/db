use utf8;
package DB::Schema::Result::MdlWorkshopOld;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopOld - Legacy workshop table to be dropped later in Moodle 2.x

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

=head1 TABLE: C<mdl_workshop_old>

=cut

__PACKAGE__->table("mdl_workshop_old");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshop_old_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 wtype

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 nelements

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 nattachments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 phase

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 format

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 gradingstrategy

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 resubmit

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 agreeassessments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 hidegrades

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 anonymous

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 includeself

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 maxbytes

  data_type: 'bigint'
  default_value: 100000
  is_nullable: 0

=head2 submissionstart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 assessmentstart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 submissionend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 assessmentend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 releasegrades

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 grade

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 gradinggrade

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 ntassessments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 assessmentcomps

  data_type: 'smallint'
  default_value: 2
  is_nullable: 0

=head2 nsassessments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 overallocation

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 teacherweight

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 showleaguetable

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 usepassword

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 password

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 newplugin

  data_type: 'varchar'
  is_nullable: 1
  size: 28

=head2 newid

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshop_old_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "wtype",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "nelements",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "nattachments",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "phase",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "format",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "gradingstrategy",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "resubmit",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "agreeassessments",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "hidegrades",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "anonymous",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "includeself",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "maxbytes",
  { data_type => "bigint", default_value => 100000, is_nullable => 0 },
  "submissionstart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assessmentstart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "submissionend",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assessmentend",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "releasegrades",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "grade",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "gradinggrade",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "ntassessments",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "assessmentcomps",
  { data_type => "smallint", default_value => 2, is_nullable => 0 },
  "nsassessments",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "overallocation",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "teacherweight",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "showleaguetable",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "usepassword",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "password",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "newplugin",
  { data_type => "varchar", is_nullable => 1, size => 28 },
  "newid",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iflVcPtYybR236+P1FTcVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
