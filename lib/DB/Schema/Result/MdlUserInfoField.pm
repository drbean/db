use utf8;
package DB::Schema::Result::MdlUserInfoField;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUserInfoField - Customisable user profile fields

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

=head1 TABLE: C<mdl_user_info_field>

=cut

__PACKAGE__->table("mdl_user_info_field");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_user_info_field_id_seq'

=head2 shortname

  data_type: 'varchar'
  default_value: 'shortname'
  is_nullable: 0
  size: 255

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 datatype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 categoryid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 sortorder

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 required

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 locked

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 visible

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 forceunique

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 signup

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 defaultdata

  data_type: 'text'
  is_nullable: 1

=head2 defaultdataformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 param1

  data_type: 'text'
  is_nullable: 1

=head2 param2

  data_type: 'text'
  is_nullable: 1

=head2 param3

  data_type: 'text'
  is_nullable: 1

=head2 param4

  data_type: 'text'
  is_nullable: 1

=head2 param5

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_user_info_field_id_seq",
  },
  "shortname",
  {
    data_type => "varchar",
    default_value => "shortname",
    is_nullable => 0,
    size => 255,
  },
  "name",
  { data_type => "text", is_nullable => 0 },
  "datatype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "categoryid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "required",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "locked",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "visible",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "forceunique",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "signup",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "defaultdata",
  { data_type => "text", is_nullable => 1 },
  "defaultdataformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "param1",
  { data_type => "text", is_nullable => 1 },
  "param2",
  { data_type => "text", is_nullable => 1 },
  "param3",
  { data_type => "text", is_nullable => 1 },
  "param4",
  { data_type => "text", is_nullable => 1 },
  "param5",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:snyLIhjyPO023SSjy1HQwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
