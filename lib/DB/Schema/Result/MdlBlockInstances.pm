use utf8;
package DB::Schema::Result::MdlBlockInstances;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBlockInstances

=head1 DESCRIPTION

This table stores block instances. The type of block this is is given by the blockname column. The places this block instance appears is controlled by the parentcontexid, showinsubcontexts, pagetypepattern and subpagepattern fields. Where the block a

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

=head1 TABLE: C<mdl_block_instances>

=cut

__PACKAGE__->table("mdl_block_instances");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_block_instances_id_seq'

=head2 blockname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 parentcontextid

  data_type: 'bigint'
  is_nullable: 0

=head2 showinsubcontexts

  data_type: 'smallint'
  is_nullable: 0

=head2 pagetypepattern

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 subpagepattern

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 defaultregion

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 defaultweight

  data_type: 'bigint'
  is_nullable: 0

=head2 configdata

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_block_instances_id_seq",
  },
  "blockname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "parentcontextid",
  { data_type => "bigint", is_nullable => 0 },
  "showinsubcontexts",
  { data_type => "smallint", is_nullable => 0 },
  "pagetypepattern",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "subpagepattern",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "defaultregion",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
  "defaultweight",
  { data_type => "bigint", is_nullable => 0 },
  "configdata",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i/1HxHBvqjeDU4vbimLTnQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
