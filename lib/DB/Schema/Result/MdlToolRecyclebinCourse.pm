use utf8;
package DB::Schema::Result::MdlToolRecyclebinCourse;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlToolRecyclebinCourse - A list of items in the course recycle bin

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

=head1 TABLE: C<mdl_tool_recyclebin_course>

=cut

__PACKAGE__->table("mdl_tool_recyclebin_course");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tool_recyclebin_course_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 section

  data_type: 'bigint'
  is_nullable: 0

=head2 module

  data_type: 'bigint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 timecreated

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
    sequence          => "mdl_tool_recyclebin_course_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "section",
  { data_type => "bigint", is_nullable => 0 },
  "module",
  { data_type => "bigint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NT4LVsCuyROovvIrTCtKFg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
