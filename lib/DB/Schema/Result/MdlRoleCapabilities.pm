use utf8;
package DB::Schema::Result::MdlRoleCapabilities;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRoleCapabilities

=head1 DESCRIPTION

permission has to be signed, overriding a capability for a particular role in a particular context

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

=head1 TABLE: C<mdl_role_capabilities>

=cut

__PACKAGE__->table("mdl_role_capabilities");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_role_capabilities_id_seq'

=head2 contextid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 roleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 capability

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 permission

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 modifierid

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
    sequence          => "mdl_role_capabilities_id_seq",
  },
  "contextid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "roleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "capability",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "permission",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "modifierid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_rolecapa_rolconcap_uix>

=over 4

=item * L</roleid>

=item * L</contextid>

=item * L</capability>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_rolecapa_rolconcap_uix",
  ["roleid", "contextid", "capability"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nnhGJq4gtn0CnEF/fJCZgg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
