use utf8;
package DB::Schema::Result::MdlBlockCommunity;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBlockCommunity - Community block

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

=head1 TABLE: C<mdl_block_community>

=cut

__PACKAGE__->table("mdl_block_community");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_block_community_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 coursename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 coursedescription

  data_type: 'text'
  is_nullable: 1

=head2 courseurl

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 imageurl

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_block_community_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "coursename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "coursedescription",
  { data_type => "text", is_nullable => 1 },
  "courseurl",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "imageurl",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ie5tY/+hWota+NL2gTz1Pg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
