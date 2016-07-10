use utf8;
package DB::Schema::Result::MdlBackupCourses;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBackupCourses - To store every course backup status

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

=head1 TABLE: C<mdl_backup_courses>

=cut

__PACKAGE__->table("mdl_backup_courses");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_backup_courses_id_seq'

=head2 courseid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 laststarttime

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastendtime

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 laststatus

  data_type: 'varchar'
  default_value: 5
  is_nullable: 0
  size: 1

=head2 nextstarttime

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
    sequence          => "mdl_backup_courses_id_seq",
  },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "laststarttime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastendtime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "laststatus",
  { data_type => "varchar", default_value => 5, is_nullable => 0, size => 1 },
  "nextstarttime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_backcour_cou_uix>

=over 4

=item * L</courseid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_backcour_cou_uix", ["courseid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qobweSc5FicV65DH/zo9Pg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
