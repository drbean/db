use utf8;
package DB::Schema::Result::MdlLessonBranch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLessonBranch - branches for each lesson/user

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

=head1 TABLE: C<mdl_lesson_branch>

=cut

__PACKAGE__->table("mdl_lesson_branch");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lesson_branch_id_seq'

=head2 lessonid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 pageid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 retry

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 flag

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timeseen

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 nextpageid

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
    sequence          => "mdl_lesson_branch_id_seq",
  },
  "lessonid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "pageid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "retry",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "flag",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timeseen",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "nextpageid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XCwflx8fdmEiyPC5zBLxaA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
