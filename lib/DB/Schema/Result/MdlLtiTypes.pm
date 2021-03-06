use utf8;
package DB::Schema::Result::MdlLtiTypes;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLtiTypes - Basic LTI pre-configured activities

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

=head1 TABLE: C<mdl_lti_types>

=cut

__PACKAGE__->table("mdl_lti_types");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lti_types_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: 'basiclti Activity'
  is_nullable: 0
  size: 255

=head2 baseurl

  data_type: 'text'
  is_nullable: 0

=head2 tooldomain

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 state

  data_type: 'smallint'
  default_value: 2
  is_nullable: 0

=head2 course

  data_type: 'bigint'
  is_nullable: 0

=head2 coursevisible

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 toolproxyid

  data_type: 'bigint'
  is_nullable: 1

=head2 enabledcapability

  data_type: 'text'
  is_nullable: 1

=head2 parameter

  data_type: 'text'
  is_nullable: 1

=head2 icon

  data_type: 'text'
  is_nullable: 1

=head2 secureicon

  data_type: 'text'
  is_nullable: 1

=head2 createdby

  data_type: 'bigint'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_lti_types_id_seq",
  },
  "name",
  {
    data_type => "varchar",
    default_value => "basiclti Activity",
    is_nullable => 0,
    size => 255,
  },
  "baseurl",
  { data_type => "text", is_nullable => 0 },
  "tooldomain",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "state",
  { data_type => "smallint", default_value => 2, is_nullable => 0 },
  "course",
  { data_type => "bigint", is_nullable => 0 },
  "coursevisible",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "toolproxyid",
  { data_type => "bigint", is_nullable => 1 },
  "enabledcapability",
  { data_type => "text", is_nullable => 1 },
  "parameter",
  { data_type => "text", is_nullable => 1 },
  "icon",
  { data_type => "text", is_nullable => 1 },
  "secureicon",
  { data_type => "text", is_nullable => 1 },
  "createdby",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7fsjmzovgHv9oI/WFv+bVw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
