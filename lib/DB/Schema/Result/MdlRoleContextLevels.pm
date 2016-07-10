use utf8;
package DB::Schema::Result::MdlRoleContextLevels;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRoleContextLevels

=head1 DESCRIPTION

Lists which roles can be assigned at which context levels. The assignment is allowed in the corresponding row is present in this table.

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

=head1 TABLE: C<mdl_role_context_levels>

=cut

__PACKAGE__->table("mdl_role_context_levels");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_role_context_levels_id_seq'

=head2 roleid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextlevel

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_role_context_levels_id_seq",
  },
  "roleid",
  { data_type => "bigint", is_nullable => 0 },
  "contextlevel",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_rolecontleve_conrol_uix>

=over 4

=item * L</contextlevel>

=item * L</roleid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_rolecontleve_conrol_uix", ["contextlevel", "roleid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gZFsTr9PZpuyElXu6Yy1Vw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
