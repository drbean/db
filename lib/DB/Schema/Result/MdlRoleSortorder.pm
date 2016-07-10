use utf8;
package DB::Schema::Result::MdlRoleSortorder;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRoleSortorder - sort order of course managers in a course

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

=head1 TABLE: C<mdl_role_sortorder>

=cut

__PACKAGE__->table("mdl_role_sortorder");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_role_sortorder_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 roleid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 sortoder

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_role_sortorder_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "roleid",
  { data_type => "bigint", is_nullable => 0 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "sortoder",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_rolesort_userolcon_uix>

=over 4

=item * L</userid>

=item * L</roleid>

=item * L</contextid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_rolesort_userolcon_uix",
  ["userid", "roleid", "contextid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ufIo3NCndMBpYnPKccHk8Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
