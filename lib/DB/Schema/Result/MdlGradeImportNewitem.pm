use utf8;
package DB::Schema::Result::MdlGradeImportNewitem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeImportNewitem

=head1 DESCRIPTION

temporary table for storing new grade_item names from grade import

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

=head1 TABLE: C<mdl_grade_import_newitem>

=cut

__PACKAGE__->table("mdl_grade_import_newitem");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_import_newitem_id_seq'

=head2 itemname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 importcode

  data_type: 'bigint'
  is_nullable: 0

=head2 importer

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_grade_import_newitem_id_seq",
  },
  "itemname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "importcode",
  { data_type => "bigint", is_nullable => 0 },
  "importer",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sUUrUJA1+4TLCpMYFscpFA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
