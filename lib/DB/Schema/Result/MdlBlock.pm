use utf8;
package DB::Schema::Result::MdlBlock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBlock - contains all installed blocks

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

=head1 TABLE: C<mdl_block>

=cut

__PACKAGE__->table("mdl_block");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_block_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 cron

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastcron

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 visible

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_block_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "cron",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastcron",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_bloc_nam_uix>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_bloc_nam_uix", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8rZ1zw5M0L8JruEDUkcKxw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
