use utf8;
package DB::Schema::Result::MdlGroups;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGroups - Each record represents a group.

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

=head1 TABLE: C<mdl_groups>

=cut

__PACKAGE__->table("mdl_groups");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_groups_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 idnumber

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 enrolmentkey

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 picture

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 hidepicture

  data_type: 'smallint'
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

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_groups_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "idnumber",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "enrolmentkey",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "picture",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "hidepicture",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7Fc0qkVSaaffkNYwHxiTBA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
