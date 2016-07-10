use utf8;
package DB::Schema::Result::MdlMnetHost;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetHost - Information about the local and remote hosts for RPC

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

=head1 TABLE: C<mdl_mnet_host>

=cut

__PACKAGE__->table("mdl_mnet_host");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnet_host_id_seq'

=head2 deleted

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 wwwroot

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 ip_address

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 80

=head2 public_key

  data_type: 'text'
  is_nullable: 0

=head2 public_key_expires

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 transport

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 portno

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 last_connect_time

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 last_log_id

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 force_theme

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 theme

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 applicationid

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 sslverification

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_mnet_host_id_seq",
  },
  "deleted",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "wwwroot",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "ip_address",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 80 },
  "public_key",
  { data_type => "text", is_nullable => 0 },
  "public_key_expires",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "transport",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "portno",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "last_connect_time",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "last_log_id",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "force_theme",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "theme",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "applicationid",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "sslverification",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rEs2NSaYe1/jFwf8C4K93A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
