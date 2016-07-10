use utf8;
package DB::Schema::Result::MdlMnetRpc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetRpc - Functions or methods that we may publish or subscribe to

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

=head1 TABLE: C<mdl_mnet_rpc>

=cut

__PACKAGE__->table("mdl_mnet_rpc");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnet_rpc_id_seq'

=head2 functionname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 xmlrpcpath

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 80

=head2 plugintype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 pluginname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 enabled

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 help

  data_type: 'text'
  is_nullable: 0

=head2 profile

  data_type: 'text'
  is_nullable: 0

=head2 filename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 classname

  data_type: 'varchar'
  is_nullable: 1
  size: 150

=head2 static

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_mnet_rpc_id_seq",
  },
  "functionname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "xmlrpcpath",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 80 },
  "plugintype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "pluginname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "enabled",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "help",
  { data_type => "text", is_nullable => 0 },
  "profile",
  { data_type => "text", is_nullable => 0 },
  "filename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "classname",
  { data_type => "varchar", is_nullable => 1, size => 150 },
  "static",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:U+MkY2AFAY9jEQxMV1gT+g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
