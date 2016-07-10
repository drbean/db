use utf8;
package DB::Schema::Result::MdlMessageinboundHandlers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMessageinboundHandlers - Inbound Message Handler definitions.

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

=head1 TABLE: C<mdl_messageinbound_handlers>

=cut

__PACKAGE__->table("mdl_messageinbound_handlers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_messageinbound_handlers_id_seq'

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 classname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 defaultexpiration

  data_type: 'bigint'
  default_value: 86400
  is_nullable: 0

=head2 validateaddress

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 enabled

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
    sequence          => "mdl_messageinbound_handlers_id_seq",
  },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "classname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "defaultexpiration",
  { data_type => "bigint", default_value => 86400, is_nullable => 0 },
  "validateaddress",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "enabled",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_messhand_cla_uix>

=over 4

=item * L</classname>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_messhand_cla_uix", ["classname"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:svVc774Mol2pHHmFq+f8Lg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
