use utf8;
package DB::Schema::Result::MdlRole;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRole - moodle roles

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

=head1 TABLE: C<mdl_role>

=cut

__PACKAGE__->table("mdl_role");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_role_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 shortname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 sortorder

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 archetype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_role_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "shortname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "archetype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_role_sho_uix>

=over 4

=item * L</shortname>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_role_sho_uix", ["shortname"]);

=head2 C<mdl_role_sor_uix>

=over 4

=item * L</sortorder>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_role_sor_uix", ["sortorder"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uj3e8hpXxab5/a18EIlMJw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
