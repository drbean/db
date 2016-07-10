use utf8;
package DB::Schema::Result::MdlCacheFilters;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCacheFilters - For keeping information about cached data

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

=head1 TABLE: C<mdl_cache_filters>

=cut

__PACKAGE__->table("mdl_cache_filters");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_cache_filters_id_seq'

=head2 filter

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 version

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 md5key

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 rawtext

  data_type: 'text'
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
    sequence          => "mdl_cache_filters_id_seq",
  },
  "filter",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "version",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "md5key",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "rawtext",
  { data_type => "text", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:enNjoanXwd6JcJ29fpyo6g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
