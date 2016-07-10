use utf8;
package DB::Schema::Result::MdlPage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlPage - Each record is one page and its config data

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

=head1 TABLE: C<mdl_page>

=cut

__PACKAGE__->table("mdl_page");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_page_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 1

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 1

=head2 contentformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 legacyfiles

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 legacyfileslast

  data_type: 'bigint'
  is_nullable: 1

=head2 display

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 displayoptions

  data_type: 'text'
  is_nullable: 1

=head2 revision

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

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
    sequence          => "mdl_page_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 1 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 1 },
  "contentformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "legacyfiles",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "legacyfileslast",
  { data_type => "bigint", is_nullable => 1 },
  "display",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "displayoptions",
  { data_type => "text", is_nullable => 1 },
  "revision",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GkyJyXQthED/tf3/NdWqSQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
