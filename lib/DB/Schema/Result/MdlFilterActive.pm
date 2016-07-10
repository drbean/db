use utf8;
package DB::Schema::Result::MdlFilterActive;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlFilterActive

=head1 DESCRIPTION

Stores information about which filters are active in which contexts. Also the filter sort order. See get_active_filters in lib/filterlib.php for how this data is used.

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

=head1 TABLE: C<mdl_filter_active>

=cut

__PACKAGE__->table("mdl_filter_active");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_filter_active_id_seq'

=head2 filter

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 active

  data_type: 'smallint'
  is_nullable: 0

=head2 sortorder

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
    sequence          => "mdl_filter_active_id_seq",
  },
  "filter",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "active",
  { data_type => "smallint", is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_filtacti_confil_uix>

=over 4

=item * L</contextid>

=item * L</filter>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_filtacti_confil_uix", ["contextid", "filter"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P7PWVHxauwE0c0L5hpi06A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
