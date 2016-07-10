use utf8;
package DB::Schema::Result::MdlRoleAllowAssign;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRoleAllowAssign - this defines what role can assign what role

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

=head1 TABLE: C<mdl_role_allow_assign>

=cut

__PACKAGE__->table("mdl_role_allow_assign");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_role_allow_assign_id_seq'

=head2 roleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 allowassign

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
    sequence          => "mdl_role_allow_assign_id_seq",
  },
  "roleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "allowassign",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_rolealloassi_rolall_uix>

=over 4

=item * L</roleid>

=item * L</allowassign>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_rolealloassi_rolall_uix", ["roleid", "allowassign"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6nUeeG62ta3Wob1s0pZGQg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
