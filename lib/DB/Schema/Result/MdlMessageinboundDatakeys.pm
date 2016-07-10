use utf8;
package DB::Schema::Result::MdlMessageinboundDatakeys;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMessageinboundDatakeys - Inbound Message data item secret keys.

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

=head1 TABLE: C<mdl_messageinbound_datakeys>

=cut

__PACKAGE__->table("mdl_messageinbound_datakeys");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_messageinbound_datakeys_id_seq'

=head2 handler

  data_type: 'bigint'
  is_nullable: 0

=head2 datavalue

  data_type: 'bigint'
  is_nullable: 0

=head2 datakey

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 expires

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_messageinbound_datakeys_id_seq",
  },
  "handler",
  { data_type => "bigint", is_nullable => 0 },
  "datavalue",
  { data_type => "bigint", is_nullable => 0 },
  "datakey",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "expires",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_messdata_handat_uix>

=over 4

=item * L</handler>

=item * L</datavalue>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_messdata_handat_uix", ["handler", "datavalue"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P7POjKBtmIXuHmVuAolObA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
