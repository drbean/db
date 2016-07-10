use utf8;
package DB::Schema::Result::MdlAssignPluginConfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignPluginConfig - Config data for an instance of a plugin in an assignment.

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

=head1 TABLE: C<mdl_assign_plugin_config>

=cut

__PACKAGE__->table("mdl_assign_plugin_config");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assign_plugin_config_id_seq'

=head2 assignment

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 plugin

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 28

=head2 subtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 28

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 28

=head2 value

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_assign_plugin_config_id_seq",
  },
  "assignment",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "plugin",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 28 },
  "subtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 28 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 28 },
  "value",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8djwCvr+pmSyEw7dd+wFIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
