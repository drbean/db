use utf8;
package DB::Schema::Result::MdlLogstoreStandardLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLogstoreStandardLog - Standard log table

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

=head1 TABLE: C<mdl_logstore_standard_log>

=cut

__PACKAGE__->table("mdl_logstore_standard_log");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_logstore_standard_log_id_seq'

=head2 eventname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 action

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 target

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 objecttable

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 objectid

  data_type: 'bigint'
  is_nullable: 1

=head2 crud

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 edulevel

  data_type: 'smallint'
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextlevel

  data_type: 'bigint'
  is_nullable: 0

=head2 contextinstanceid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  is_nullable: 1

=head2 relateduserid

  data_type: 'bigint'
  is_nullable: 1

=head2 anonymous

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 other

  data_type: 'text'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 origin

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 ip

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 realuserid

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_logstore_standard_log_id_seq",
  },
  "eventname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "action",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "target",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "objecttable",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "objectid",
  { data_type => "bigint", is_nullable => 1 },
  "crud",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 1 },
  "edulevel",
  { data_type => "smallint", is_nullable => 0 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "contextlevel",
  { data_type => "bigint", is_nullable => 0 },
  "contextinstanceid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "courseid",
  { data_type => "bigint", is_nullable => 1 },
  "relateduserid",
  { data_type => "bigint", is_nullable => 1 },
  "anonymous",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "other",
  { data_type => "text", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "origin",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "ip",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "realuserid",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LpADD7N2T78JZOsQNCV8/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
