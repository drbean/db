use utf8;
package DB::Schema::Result::MdlTagColl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlTagColl - Defines different set of tags

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

=head1 TABLE: C<mdl_tag_coll>

=cut

__PACKAGE__->table("mdl_tag_coll");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tag_coll_id_seq'

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 isdefault

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 sortorder

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 searchable

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 customurl

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_tag_coll_id_seq",
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "isdefault",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "component",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "sortorder",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "searchable",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "customurl",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NEQCUlSCmtOmvKjrcvZIHA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
