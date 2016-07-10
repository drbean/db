use utf8;
package DB::Schema::Result::MdlLtiToolProxies;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLtiToolProxies - LTI tool proxy registrations

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

=head1 TABLE: C<mdl_lti_tool_proxies>

=cut

__PACKAGE__->table("mdl_lti_tool_proxies");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lti_tool_proxies_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: 'Tool Provider'
  is_nullable: 0
  size: 255

=head2 regurl

  data_type: 'text'
  is_nullable: 1

=head2 state

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 guid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 secret

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 vendorcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 capabilityoffered

  data_type: 'text'
  is_nullable: 0

=head2 serviceoffered

  data_type: 'text'
  is_nullable: 0

=head2 toolproxy

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

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_lti_tool_proxies_id_seq",
  },
  "name",
  {
    data_type => "varchar",
    default_value => "Tool Provider",
    is_nullable => 0,
    size => 255,
  },
  "regurl",
  { data_type => "text", is_nullable => 1 },
  "state",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "guid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "secret",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "vendorcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "capabilityoffered",
  { data_type => "text", is_nullable => 0 },
  "serviceoffered",
  { data_type => "text", is_nullable => 0 },
  "toolproxy",
  { data_type => "text", is_nullable => 1 },
  "createdby",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_ltitoolprox_gui_uix>

=over 4

=item * L</guid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_ltitoolprox_gui_uix", ["guid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5CyBswDOscv0zdlikfRknA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
