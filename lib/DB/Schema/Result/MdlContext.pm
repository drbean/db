use utf8;
package DB::Schema::Result::MdlContext;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlContext - one of these must be set

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

=head1 TABLE: C<mdl_context>

=cut

__PACKAGE__->table("mdl_context");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_context_id_seq'

=head2 contextlevel

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 instanceid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 path

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 depth

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
    sequence          => "mdl_context_id_seq",
  },
  "contextlevel",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "instanceid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "path",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "depth",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_cont_conins_uix>

=over 4

=item * L</contextlevel>

=item * L</instanceid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_cont_conins_uix", ["contextlevel", "instanceid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Gn18qfAM7rk0Is/AN7/m8A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
