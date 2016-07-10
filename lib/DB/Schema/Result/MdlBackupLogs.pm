use utf8;
package DB::Schema::Result::MdlBackupLogs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBackupLogs

=head1 DESCRIPTION

To store all the logs from backup and restore operations (by db logger)

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

=head1 TABLE: C<mdl_backup_logs>

=cut

__PACKAGE__->table("mdl_backup_logs");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_backup_logs_id_seq'

=head2 backupid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 loglevel

  data_type: 'smallint'
  is_nullable: 0

=head2 message

  data_type: 'text'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_backup_logs_id_seq",
  },
  "backupid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "loglevel",
  { data_type => "smallint", is_nullable => 0 },
  "message",
  { data_type => "text", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_backlogs_bacid_uix>

=over 4

=item * L</backupid>

=item * L</id>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_backlogs_bacid_uix", ["backupid", "id"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/g1xvoQxbLeKvfMWMspqaQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
