use utf8;
package DB::Schema::Result::MdlCourseFormatOptions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseFormatOptions

=head1 DESCRIPTION

Stores format-specific options for the course or course section

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

=head1 TABLE: C<mdl_course_format_options>

=cut

__PACKAGE__->table("mdl_course_format_options");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_format_options_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 format

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 21

=head2 sectionid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 value

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_course_format_options_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "format",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 21 },
  "sectionid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "value",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_courformopti_couforsec_uix>

=over 4

=item * L</courseid>

=item * L</format>

=item * L</sectionid>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_courformopti_couforsec_uix",
  ["courseid", "format", "sectionid", "name"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AYErqFeW4P96n9xkzWP2cQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
