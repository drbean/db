use utf8;
package DB::Schema::Result::MdlMnetRemoteService2rpc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetRemoteService2rpc - Group functions or methods under a service

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

=head1 TABLE: C<mdl_mnet_remote_service2rpc>

=cut

__PACKAGE__->table("mdl_mnet_remote_service2rpc");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnet_remote_service2rpc_id_seq'

=head2 serviceid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 rpcid

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
    sequence          => "mdl_mnet_remote_service2rpc_id_seq",
  },
  "serviceid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "rpcid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_mnetremoserv_rpcser_uix>

=over 4

=item * L</rpcid>

=item * L</serviceid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_mnetremoserv_rpcser_uix", ["rpcid", "serviceid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XC8Rpw+SnlVEc1MjlZsUWQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
