use utf8;
package DB::Schema::Result::MdlMnetApplication;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetApplication - Information about applications on remote hosts

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

=head1 TABLE: C<mdl_mnet_application>

=cut

__PACKAGE__->table("mdl_mnet_application");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnet_application_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 display_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 xmlrpc_server_url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 sso_land_url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 sso_jump_url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_mnet_application_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "display_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "xmlrpc_server_url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "sso_land_url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "sso_jump_url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vyw8tIIh2TPEitoolec4Jg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
