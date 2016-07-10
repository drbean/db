use utf8;
package DB::Schema::Result::MdlCoursePublished;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCoursePublished

=head1 DESCRIPTION

Information about how and when an local courses were published to hubs

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

=head1 TABLE: C<mdl_course_published>

=cut

__PACKAGE__->table("mdl_course_published");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_published_id_seq'

=head2 huburl

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 timepublished

  data_type: 'bigint'
  is_nullable: 0

=head2 enrollable

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 hubcourseid

  data_type: 'bigint'
  is_nullable: 0

=head2 status

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 timechecked

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_course_published_id_seq",
  },
  "huburl",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "timepublished",
  { data_type => "bigint", is_nullable => 0 },
  "enrollable",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "hubcourseid",
  { data_type => "bigint", is_nullable => 0 },
  "status",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "timechecked",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KFaQaTq6zJo1bvrYkQGSlA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
