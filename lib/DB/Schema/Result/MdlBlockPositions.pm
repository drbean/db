use utf8;
package DB::Schema::Result::MdlBlockPositions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBlockPositions

=head1 DESCRIPTION

Stores the position of a sticky block_instance on a another page than the one where it was added.

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

=head1 TABLE: C<mdl_block_positions>

=cut

__PACKAGE__->table("mdl_block_positions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_block_positions_id_seq'

=head2 blockinstanceid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 pagetype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 subpage

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 visible

  data_type: 'smallint'
  is_nullable: 0

=head2 region

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 weight

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_block_positions_id_seq",
  },
  "blockinstanceid",
  { data_type => "bigint", is_nullable => 0 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "pagetype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "subpage",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
  "visible",
  { data_type => "smallint", is_nullable => 0 },
  "region",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
  "weight",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_blocposi_bloconpagsub_uix>

=over 4

=item * L</blockinstanceid>

=item * L</contextid>

=item * L</pagetype>

=item * L</subpage>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_blocposi_bloconpagsub_uix",
  ["blockinstanceid", "contextid", "pagetype", "subpage"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XZHq08abSfMY91nt48LpXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
