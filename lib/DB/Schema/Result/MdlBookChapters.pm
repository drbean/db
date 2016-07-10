use utf8;
package DB::Schema::Result::MdlBookChapters;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBookChapters - Defines book_chapters

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

=head1 TABLE: C<mdl_book_chapters>

=cut

__PACKAGE__->table("mdl_book_chapters");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_book_chapters_id_seq'

=head2 bookid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 pagenum

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 subchapter

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 content

  data_type: 'text'
  is_nullable: 0

=head2 contentformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 hidden

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 importsrc

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
    sequence          => "mdl_book_chapters_id_seq",
  },
  "bookid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "pagenum",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "subchapter",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "content",
  { data_type => "text", is_nullable => 0 },
  "contentformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "hidden",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "importsrc",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:p9yAgSKGLUGtsZ+0p9BuIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
