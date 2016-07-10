use utf8;
package DB::Schema::Result::MdlMessageProviders;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMessageProviders

=head1 DESCRIPTION

This table stores the message providers (modules and core systems)

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

=head1 TABLE: C<mdl_message_providers>

=cut

__PACKAGE__->table("mdl_message_providers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_message_providers_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 capability

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_message_providers_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "capability",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_messprov_comnam_uix>

=over 4

=item * L</component>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_messprov_comnam_uix", ["component", "name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yLcmoCU8tl81LjC0gXX5ew


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
