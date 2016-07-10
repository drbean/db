use utf8;
package DB::Schema::Result::MdlResourceOld;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlResourceOld - backup of all old resource instances from 1.9

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

=head1 TABLE: C<mdl_resource_old>

=cut

__PACKAGE__->table("mdl_resource_old");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_resource_old_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 reference

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 1

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 alltext

  data_type: 'text'
  is_nullable: 0

=head2 popup

  data_type: 'text'
  is_nullable: 0

=head2 options

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 oldid

  data_type: 'bigint'
  is_nullable: 0

=head2 cmid

  data_type: 'bigint'
  is_nullable: 1

=head2 newmodule

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 newid

  data_type: 'bigint'
  is_nullable: 1

=head2 migrated

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
    sequence          => "mdl_resource_old_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "reference",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 1 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "alltext",
  { data_type => "text", is_nullable => 0 },
  "popup",
  { data_type => "text", is_nullable => 0 },
  "options",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "oldid",
  { data_type => "bigint", is_nullable => 0 },
  "cmid",
  { data_type => "bigint", is_nullable => 1 },
  "newmodule",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "newid",
  { data_type => "bigint", is_nullable => 1 },
  "migrated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_resoold_old_uix>

=over 4

=item * L</oldid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_resoold_old_uix", ["oldid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j65N4BKNe6heDbmb4cbhrw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
