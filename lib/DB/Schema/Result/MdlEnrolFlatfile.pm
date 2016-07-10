use utf8;
package DB::Schema::Result::MdlEnrolFlatfile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEnrolFlatfile - enrol_flatfile table retrofitted from MySQL

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

=head1 TABLE: C<mdl_enrol_flatfile>

=cut

__PACKAGE__->table("mdl_enrol_flatfile");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_enrol_flatfile_id_seq'

=head2 action

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 roleid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 timestart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

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
    sequence          => "mdl_enrol_flatfile_id_seq",
  },
  "action",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "roleid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "timestart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeend",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9hccnmk+HMiUUvsnAYTSkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
