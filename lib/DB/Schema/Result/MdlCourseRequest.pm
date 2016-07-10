use utf8;
package DB::Schema::Result::MdlCourseRequest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseRequest - course requests

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

=head1 TABLE: C<mdl_course_request>

=cut

__PACKAGE__->table("mdl_course_request");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_request_id_seq'

=head2 fullname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 shortname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 summary

  data_type: 'text'
  is_nullable: 0

=head2 summaryformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 category

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 reason

  data_type: 'text'
  is_nullable: 0

=head2 requester

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 password

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_course_request_id_seq",
  },
  "fullname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "shortname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "summary",
  { data_type => "text", is_nullable => 0 },
  "summaryformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "category",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "reason",
  { data_type => "text", is_nullable => 0 },
  "requester",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "password",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YF5gLM8+PixznBbB6KWukw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
