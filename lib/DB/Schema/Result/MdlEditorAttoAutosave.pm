use utf8;
package DB::Schema::Result::MdlEditorAttoAutosave;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEditorAttoAutosave

=head1 DESCRIPTION

Draft text that is auto-saved every 5 seconds while an editor is open.

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

=head1 TABLE: C<mdl_editor_atto_autosave>

=cut

__PACKAGE__->table("mdl_editor_atto_autosave");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_editor_atto_autosave_id_seq'

=head2 elementid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 pagehash

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 drafttext

  data_type: 'text'
  is_nullable: 0

=head2 draftid

  data_type: 'bigint'
  is_nullable: 1

=head2 pageinstance

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_editor_atto_autosave_id_seq",
  },
  "elementid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "pagehash",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "drafttext",
  { data_type => "text", is_nullable => 0 },
  "draftid",
  { data_type => "bigint", is_nullable => 1 },
  "pageinstance",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_editattoauto_eleconuse_uix>

=over 4

=item * L</elementid>

=item * L</contextid>

=item * L</userid>

=item * L</pagehash>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_editattoauto_eleconuse_uix",
  ["elementid", "contextid", "userid", "pagehash"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pTP3RBvLUrQfxrPvGzuCRg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
