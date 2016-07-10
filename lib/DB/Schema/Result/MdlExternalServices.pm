use utf8;
package DB::Schema::Result::MdlExternalServices;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlExternalServices - built in and custom external services

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

=head1 TABLE: C<mdl_external_services>

=cut

__PACKAGE__->table("mdl_external_services");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_external_services_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 enabled

  data_type: 'smallint'
  is_nullable: 0

=head2 requiredcapability

  data_type: 'varchar'
  is_nullable: 1
  size: 150

=head2 restrictedusers

  data_type: 'smallint'
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

=head2 shortname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 downloadfiles

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 uploadfiles

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
    sequence          => "mdl_external_services_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "enabled",
  { data_type => "smallint", is_nullable => 0 },
  "requiredcapability",
  { data_type => "varchar", is_nullable => 1, size => 150 },
  "restrictedusers",
  { data_type => "smallint", is_nullable => 0 },
  "component",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
  "shortname",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "downloadfiles",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "uploadfiles",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_exteserv_nam_uix>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_exteserv_nam_uix", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:45yVon9PR3iQfTbsCkuzHA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
