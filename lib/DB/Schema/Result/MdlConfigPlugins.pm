use utf8;
package DB::Schema::Result::MdlConfigPlugins;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlConfigPlugins - Moodle modules and plugins configuration variables

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

=head1 TABLE: C<mdl_config_plugins>

=cut

__PACKAGE__->table("mdl_config_plugins");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_config_plugins_id_seq'

=head2 plugin

  data_type: 'varchar'
  default_value: 'core'
  is_nullable: 0
  size: 100

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 value

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_config_plugins_id_seq",
  },
  "plugin",
  {
    data_type => "varchar",
    default_value => "core",
    is_nullable => 0,
    size => 100,
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "value",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_confplug_plunam_uix>

=over 4

=item * L</plugin>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_confplug_plunam_uix", ["plugin", "name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1rAlK4dIC9kiLOpb38s6YA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
