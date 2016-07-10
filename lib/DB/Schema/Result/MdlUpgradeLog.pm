use utf8;
package DB::Schema::Result::MdlUpgradeLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUpgradeLog - Upgrade logging

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

=head1 TABLE: C<mdl_upgrade_log>

=cut

__PACKAGE__->table("mdl_upgrade_log");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_upgrade_log_id_seq'

=head2 type

  data_type: 'bigint'
  is_nullable: 0

=head2 plugin

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 version

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 targetversion

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 info

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 details

  data_type: 'text'
  is_nullable: 1

=head2 backtrace

  data_type: 'text'
  is_nullable: 1

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_upgrade_log_id_seq",
  },
  "type",
  { data_type => "bigint", is_nullable => 0 },
  "plugin",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "version",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "targetversion",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "info",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "details",
  { data_type => "text", is_nullable => 1 },
  "backtrace",
  { data_type => "text", is_nullable => 1 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eIXYi9itKhMO2pCzz9/1mw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
