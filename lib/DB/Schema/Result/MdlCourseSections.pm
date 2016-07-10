use utf8;
package DB::Schema::Result::MdlCourseSections;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseSections - to define the sections for each course

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

=head1 TABLE: C<mdl_course_sections>

=cut

__PACKAGE__->table("mdl_course_sections");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_sections_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 section

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 summary

  data_type: 'text'
  is_nullable: 1

=head2 summaryformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 sequence

  accessor: undef
  data_type: 'text'
  is_nullable: 1

=head2 visible

  data_type: 'smallint'
  default_value: 1
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
    sequence          => "mdl_course_sections_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "section",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "summary",
  { data_type => "text", is_nullable => 1 },
  "summaryformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "sequence",
  { accessor => undef, data_type => "text", is_nullable => 1 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "availability",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_coursect_cousec_uix>

=over 4

=item * L</course>

=item * L</section>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_coursect_cousec_uix", ["course", "section"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Sua2psJZJtKh0pC33XSIvQ

# man DBIx::Class::Schema::Loader::Base(3)

__PACKAGE__->add_column('+sequence' => { accessor => 'column_sequence' });


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
