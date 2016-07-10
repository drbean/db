use utf8;
package DB::Schema::Result::MdlMessageAirnotifierDevices;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMessageAirnotifierDevices

=head1 DESCRIPTION

Store information about the devices registered in Airnotifier for PUSH notifications

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

=head1 TABLE: C<mdl_message_airnotifier_devices>

=cut

__PACKAGE__->table("mdl_message_airnotifier_devices");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_message_airnotifier_devices_id_seq'

=head2 userdeviceid

  data_type: 'bigint'
  is_nullable: 0

=head2 enable

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_message_airnotifier_devices_id_seq",
  },
  "userdeviceid",
  { data_type => "bigint", is_nullable => 0 },
  "enable",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_messairndevi_use_uix>

=over 4

=item * L</userdeviceid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_messairndevi_use_uix", ["userdeviceid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2RWwQDZxb4YxFtaH/ubGsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
