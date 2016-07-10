use utf8;
package DB::Schema::Result::MdlLessonPages;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLessonPages - Defines lesson_pages

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

=head1 TABLE: C<mdl_lesson_pages>

=cut

__PACKAGE__->table("mdl_lesson_pages");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lesson_pages_id_seq'

=head2 lessonid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 prevpageid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 nextpageid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 qtype

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 qoption

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 layout

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 display

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 contents

  data_type: 'text'
  is_nullable: 0

=head2 contentsformat

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
    sequence          => "mdl_lesson_pages_id_seq",
  },
  "lessonid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "prevpageid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "nextpageid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "qtype",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "qoption",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "layout",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "display",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "contents",
  { data_type => "text", is_nullable => 0 },
  "contentsformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:J9HW63tYHBqWTgqoU9Zg1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
