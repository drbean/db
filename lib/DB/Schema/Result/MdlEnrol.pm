use utf8;
package DB::Schema::Result::MdlEnrol;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEnrol

=head1 DESCRIPTION

Instances of enrolment plugins used in courses, fields marked as custom have a plugin defined meaning, core does not touch them. Create a new linked table if you need even more custom fields.

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

=head1 TABLE: C<mdl_enrol>

=cut

__PACKAGE__->table("mdl_enrol");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_enrol_id_seq'

=head2 enrol

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 status

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 sortorder

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 enrolperiod

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 enrolstartdate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 enrolenddate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 expirynotify

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 expirythreshold

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 notifyall

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cost

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 currency

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 roleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 customint1

  data_type: 'bigint'
  is_nullable: 1

=head2 customint2

  data_type: 'bigint'
  is_nullable: 1

=head2 customint3

  data_type: 'bigint'
  is_nullable: 1

=head2 customint4

  data_type: 'bigint'
  is_nullable: 1

=head2 customint5

  data_type: 'bigint'
  is_nullable: 1

=head2 customint6

  data_type: 'bigint'
  is_nullable: 1

=head2 customint7

  data_type: 'bigint'
  is_nullable: 1

=head2 customint8

  data_type: 'bigint'
  is_nullable: 1

=head2 customchar1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 customchar2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 customchar3

  data_type: 'varchar'
  is_nullable: 1
  size: 1333

=head2 customdec1

  data_type: 'numeric'
  is_nullable: 1
  size: [12,7]

=head2 customdec2

  data_type: 'numeric'
  is_nullable: 1
  size: [12,7]

=head2 customtext1

  data_type: 'text'
  is_nullable: 1

=head2 customtext2

  data_type: 'text'
  is_nullable: 1

=head2 customtext3

  data_type: 'text'
  is_nullable: 1

=head2 customtext4

  data_type: 'text'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

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
    sequence          => "mdl_enrol_id_seq",
  },
  "enrol",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "status",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "enrolperiod",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "enrolstartdate",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "enrolenddate",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "expirynotify",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "expirythreshold",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "notifyall",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cost",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "currency",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "roleid",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "customint1",
  { data_type => "bigint", is_nullable => 1 },
  "customint2",
  { data_type => "bigint", is_nullable => 1 },
  "customint3",
  { data_type => "bigint", is_nullable => 1 },
  "customint4",
  { data_type => "bigint", is_nullable => 1 },
  "customint5",
  { data_type => "bigint", is_nullable => 1 },
  "customint6",
  { data_type => "bigint", is_nullable => 1 },
  "customint7",
  { data_type => "bigint", is_nullable => 1 },
  "customint8",
  { data_type => "bigint", is_nullable => 1 },
  "customchar1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "customchar2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "customchar3",
  { data_type => "varchar", is_nullable => 1, size => 1333 },
  "customdec1",
  { data_type => "numeric", is_nullable => 1, size => [12, 7] },
  "customdec2",
  { data_type => "numeric", is_nullable => 1, size => [12, 7] },
  "customtext1",
  { data_type => "text", is_nullable => 1 },
  "customtext2",
  { data_type => "text", is_nullable => 1 },
  "customtext3",
  { data_type => "text", is_nullable => 1 },
  "customtext4",
  { data_type => "text", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jk/YVcS0SIp+R9XDKT2ivA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
