use utf8;
package DB::Schema::Result::MdlMnetSsoAccessControl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetSsoAccessControl

=head1 DESCRIPTION

Users by host permitted (or not) to login from a remote provider

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

=head1 TABLE: C<mdl_mnet_sso_access_control>

=cut

__PACKAGE__->table("mdl_mnet_sso_access_control");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnet_sso_access_control_id_seq'

=head2 username

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 mnet_host_id

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 accessctrl

  data_type: 'varchar'
  default_value: 'allow'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_mnet_sso_access_control_id_seq",
  },
  "username",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "mnet_host_id",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "accessctrl",
  {
    data_type => "varchar",
    default_value => "allow",
    is_nullable => 0,
    size => 20,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_mnetssoaccecont_mneuse_uix>

=over 4

=item * L</mnet_host_id>

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_mnetssoaccecont_mneuse_uix",
  ["mnet_host_id", "username"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oQg9nACJcdv5c0eFYNNr9Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
