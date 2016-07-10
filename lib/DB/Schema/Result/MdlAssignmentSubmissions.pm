use utf8;
package DB::Schema::Result::MdlAssignmentSubmissions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignmentSubmissions - Info about submitted assignments

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

=head1 TABLE: C<mdl_assignment_submissions>

=cut

__PACKAGE__->table("mdl_assignment_submissions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assignment_submissions_id_seq'

=head2 assignment

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
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

=head2 numfiles

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 data1

  data_type: 'text'
  is_nullable: 1

=head2 data2

  data_type: 'text'
  is_nullable: 1

=head2 grade

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 submissioncomment

  data_type: 'text'
  is_nullable: 0

=head2 format

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 teacher

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemarked

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 mailed

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
    sequence          => "mdl_assignment_submissions_id_seq",
  },
  "assignment",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "numfiles",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "data1",
  { data_type => "text", is_nullable => 1 },
  "data2",
  { data_type => "text", is_nullable => 1 },
  "grade",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "submissioncomment",
  { data_type => "text", is_nullable => 0 },
  "format",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "teacher",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemarked",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "mailed",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3bUcg6r5K9nJYOlKkqTSfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
