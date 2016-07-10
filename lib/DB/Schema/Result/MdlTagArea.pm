use utf8;
package DB::Schema::Result::MdlTagArea;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlTagArea

=head1 DESCRIPTION

Defines various tag areas, one area is identified by component and itemtype

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

=head1 TABLE: C<mdl_tag_area>

=cut

__PACKAGE__->table("mdl_tag_area");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tag_area_id_seq'

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 itemtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 enabled

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 tagcollid

  data_type: 'bigint'
  is_nullable: 0

=head2 callback

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 callbackfile

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 showstandard

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_tag_area_id_seq",
  },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "itemtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "enabled",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "tagcollid",
  { data_type => "bigint", is_nullable => 0 },
  "callback",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "callbackfile",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "showstandard",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_tagarea_comite_uix>

=over 4

=item * L</component>

=item * L</itemtype>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_tagarea_comite_uix", ["component", "itemtype"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ffyxKg4AYcRuPKknI5/1BA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
