use utf8;
package DB::Schema::Result::MdlCourseModules;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseModules - course_modules table retrofitted from MySQL

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

=head1 TABLE: C<mdl_course_modules>

=cut

__PACKAGE__->table("mdl_course_modules");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_modules_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 module

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 instance

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 section

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 idnumber

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 added

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 score

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 indent

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 visible

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 visibleold

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 groupmode

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 groupingid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 completion

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 completiongradeitemnumber

  data_type: 'bigint'
  is_nullable: 1

=head2 completionview

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 completionexpected

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 showdescription

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 availability

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_course_modules_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "module",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "instance",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "section",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "idnumber",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "added",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "score",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "indent",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "visibleold",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "groupmode",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "groupingid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "completion",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "completiongradeitemnumber",
  { data_type => "bigint", is_nullable => 1 },
  "completionview",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "completionexpected",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "showdescription",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "availability",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NLAwcbIst2qFCmvBNmQI+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
