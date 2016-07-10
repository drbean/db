use utf8;
package DB::Schema::Result::MdlUserDevices;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUserDevices

=head1 DESCRIPTION

This table stores user's mobile devices information in order to send PUSH notifications

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

=head1 TABLE: C<mdl_user_devices>

=cut

__PACKAGE__->table("mdl_user_devices");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_user_devices_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 appid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 model

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 platform

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 pushid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 uuid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 timecreated

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
    sequence          => "mdl_user_devices_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "appid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "model",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "platform",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "version",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "pushid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "uuid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "timecreated",
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

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_userdevi_pususe_uix>

=over 4

=item * L</pushid>

=item * L</userid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_userdevi_pususe_uix", ["pushid", "userid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4dok6wWq/Ay3a6qYvapaUQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
