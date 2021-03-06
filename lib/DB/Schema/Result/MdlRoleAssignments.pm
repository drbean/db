use utf8;
package DB::Schema::Result::MdlRoleAssignments;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRoleAssignments - assigning roles in different context

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

=head1 TABLE: C<mdl_role_assignments>

=cut

__PACKAGE__->table("mdl_role_assignments");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_role_assignments_id_seq'

=head2 roleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

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

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 itemid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 sortorder

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
    sequence          => "mdl_role_assignments_id_seq",
  },
  "roleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "contextid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "modifierid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "itemid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:21EoQnnUISjwAdvpv3kI8w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
