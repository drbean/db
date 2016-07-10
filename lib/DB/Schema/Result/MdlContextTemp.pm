use utf8;
package DB::Schema::Result::MdlContextTemp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlContextTemp

=head1 DESCRIPTION

Used by build_context_path() in upgrade and cron to keep context depths and paths in sync.

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

=head1 TABLE: C<mdl_context_temp>

=cut

__PACKAGE__->table("mdl_context_temp");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_nullable: 0

=head2 path

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 depth

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "bigint", is_nullable => 0 },
  "path",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "depth",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bC5jK/qrvralb/Tf5yEiAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
