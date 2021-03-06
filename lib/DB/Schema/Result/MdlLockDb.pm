use utf8;
package DB::Schema::Result::MdlLockDb;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLockDb - Stores active and inactive lock types for db locking method.

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

=head1 TABLE: C<mdl_lock_db>

=cut

__PACKAGE__->table("mdl_lock_db");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lock_db_id_seq'

=head2 resourcekey

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 expires

  data_type: 'bigint'
  is_nullable: 1

=head2 owner

  data_type: 'varchar'
  is_nullable: 1
  size: 36

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_lock_db_id_seq",
  },
  "resourcekey",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "expires",
  { data_type => "bigint", is_nullable => 1 },
  "owner",
  { data_type => "varchar", is_nullable => 1, size => 36 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_lockdb_res_uix>

=over 4

=item * L</resourcekey>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_lockdb_res_uix", ["resourcekey"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZRGlL0ik5m5soiZ8N4DWDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
