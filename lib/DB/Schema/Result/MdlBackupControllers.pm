use utf8;
package DB::Schema::Result::MdlBackupControllers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBackupControllers - To store the backup_controllers as they are used

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

=head1 TABLE: C<mdl_backup_controllers>

=cut

__PACKAGE__->table("mdl_backup_controllers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_backup_controllers_id_seq'

=head2 backupid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 operation

  data_type: 'varchar'
  default_value: 'backup'
  is_nullable: 0
  size: 20

=head2 type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 itemid

  data_type: 'bigint'
  is_nullable: 0

=head2 format

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 interactive

  data_type: 'smallint'
  is_nullable: 0

=head2 purpose

  data_type: 'smallint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 status

  data_type: 'smallint'
  is_nullable: 0

=head2 execution

  data_type: 'smallint'
  is_nullable: 0

=head2 executiontime

  data_type: 'bigint'
  is_nullable: 0

=head2 checksum

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 controller

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_backup_controllers_id_seq",
  },
  "backupid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "operation",
  {
    data_type => "varchar",
    default_value => "backup",
    is_nullable => 0,
    size => 20,
  },
  "type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "itemid",
  { data_type => "bigint", is_nullable => 0 },
  "format",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "interactive",
  { data_type => "smallint", is_nullable => 0 },
  "purpose",
  { data_type => "smallint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "status",
  { data_type => "smallint", is_nullable => 0 },
  "execution",
  { data_type => "smallint", is_nullable => 0 },
  "executiontime",
  { data_type => "bigint", is_nullable => 0 },
  "checksum",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "controller",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_backcont_bac_uix>

=over 4

=item * L</backupid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_backcont_bac_uix", ["backupid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZnPAYfgsQKh25hGd1yOYFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
