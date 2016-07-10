use utf8;
package DB::Schema::Result::MdlAssignUserFlags;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignUserFlags

=head1 DESCRIPTION

List of flags that can be set for a single user in a single assignment.

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

=head1 TABLE: C<mdl_assign_user_flags>

=cut

__PACKAGE__->table("mdl_assign_user_flags");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assign_user_flags_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 assignment

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 locked

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 mailed

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 extensionduedate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 workflowstate

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 allocatedmarker

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
    sequence          => "mdl_assign_user_flags_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assignment",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "locked",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "mailed",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "extensionduedate",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "workflowstate",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "allocatedmarker",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aefG/GbBgbK/U46IE0HrqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
