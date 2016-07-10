use utf8;
package DB::Schema::Result::MdlAssignfeedbackEditpdfCmnt;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignfeedbackEditpdfCmnt - Stores comments added to pdfs

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

=head1 TABLE: C<mdl_assignfeedback_editpdf_cmnt>

=cut

__PACKAGE__->table("mdl_assignfeedback_editpdf_cmnt");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assignfeedback_editpdf_cmnt_id_seq'

=head2 gradeid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 x

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 y

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 width

  data_type: 'bigint'
  default_value: 120
  is_nullable: 1

=head2 rawtext

  data_type: 'text'
  is_nullable: 1

=head2 pageno

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 colour

  data_type: 'varchar'
  default_value: 'black'
  is_nullable: 1
  size: 10

=head2 draft

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
    sequence          => "mdl_assignfeedback_editpdf_cmnt_id_seq",
  },
  "gradeid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "x",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "y",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "width",
  { data_type => "bigint", default_value => 120, is_nullable => 1 },
  "rawtext",
  { data_type => "text", is_nullable => 1 },
  "pageno",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "colour",
  {
    data_type => "varchar",
    default_value => "black",
    is_nullable => 1,
    size => 10,
  },
  "draft",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7830l0+sA4BffYA6tS6udg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
