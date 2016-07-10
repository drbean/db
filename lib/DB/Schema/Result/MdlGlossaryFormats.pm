use utf8;
package DB::Schema::Result::MdlGlossaryFormats;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGlossaryFormats - Setting of the display formats

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

=head1 TABLE: C<mdl_glossary_formats>

=cut

__PACKAGE__->table("mdl_glossary_formats");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_glossary_formats_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 popupformatname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 visible

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 showgroup

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 showtabs

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 defaultmode

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 defaulthook

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 sortkey

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 sortorder

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_glossary_formats_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "popupformatname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "showgroup",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "showtabs",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "defaultmode",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "defaulthook",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "sortkey",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "sortorder",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HpFt7JK66l5Z4iJQRnYjZA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
