use utf8;
package DB::Schema::Result::MdlLessonOverrides;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLessonOverrides - The overrides to lesson settings.

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

=head1 TABLE: C<mdl_lesson_overrides>

=cut

__PACKAGE__->table("mdl_lesson_overrides");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lesson_overrides_id_seq'

=head2 lessonid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 groupid

  data_type: 'bigint'
  is_nullable: 1

=head2 userid

  data_type: 'bigint'
  is_nullable: 1

=head2 available

  data_type: 'bigint'
  is_nullable: 1

=head2 deadline

  data_type: 'bigint'
  is_nullable: 1

=head2 timelimit

  data_type: 'bigint'
  is_nullable: 1

=head2 review

  data_type: 'smallint'
  is_nullable: 1

=head2 maxattempts

  data_type: 'smallint'
  is_nullable: 1

=head2 retake

  data_type: 'smallint'
  is_nullable: 1

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_lesson_overrides_id_seq",
  },
  "lessonid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "groupid",
  { data_type => "bigint", is_nullable => 1 },
  "userid",
  { data_type => "bigint", is_nullable => 1 },
  "available",
  { data_type => "bigint", is_nullable => 1 },
  "deadline",
  { data_type => "bigint", is_nullable => 1 },
  "timelimit",
  { data_type => "bigint", is_nullable => 1 },
  "review",
  { data_type => "smallint", is_nullable => 1 },
  "maxattempts",
  { data_type => "smallint", is_nullable => 1 },
  "retake",
  { data_type => "smallint", is_nullable => 1 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i2tI88lqZcuUEyc6w2HQzA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
