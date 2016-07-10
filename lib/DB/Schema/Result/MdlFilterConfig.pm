use utf8;
package DB::Schema::Result::MdlFilterConfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlFilterConfig

=head1 DESCRIPTION

Stores per-context configuration settings for filters which have them.

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

=head1 TABLE: C<mdl_filter_config>

=cut

__PACKAGE__->table("mdl_filter_config");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_filter_config_id_seq'

=head2 filter

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

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
    sequence          => "mdl_filter_config_id_seq",
  },
  "filter",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "value",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_filtconf_confilnam_uix>

=over 4

=item * L</contextid>

=item * L</filter>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_filtconf_confilnam_uix", ["contextid", "filter", "name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a+LzdBjyaHVvTMASNYMFLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
