use utf8;
package DB::Schema::Result::MdlRoleAllowSwitch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRoleAllowSwitch

=head1 DESCRIPTION

This table stores which which other roles a user is allowed to switch to if they have one role.

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

=head1 TABLE: C<mdl_role_allow_switch>

=cut

__PACKAGE__->table("mdl_role_allow_switch");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_role_allow_switch_id_seq'

=head2 roleid

  data_type: 'bigint'
  is_nullable: 0

=head2 allowswitch

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_role_allow_switch_id_seq",
  },
  "roleid",
  { data_type => "bigint", is_nullable => 0 },
  "allowswitch",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_rolealloswit_rolall_uix>

=over 4

=item * L</roleid>

=item * L</allowswitch>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_rolealloswit_rolall_uix", ["roleid", "allowswitch"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xz3oxdaFQvkyKLFrhkTZZg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
