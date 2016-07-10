use utf8;
package DB::Schema::Result::MdlRepository;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRepository

=head1 DESCRIPTION

This table contains one entry for every configured external repository instance.

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

=head1 TABLE: C<mdl_repository>

=cut

__PACKAGE__->table("mdl_repository");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_repository_id_seq'

=head2 type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 visible

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

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
    sequence          => "mdl_repository_id_seq",
  },
  "type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:driGvi1hHnIgMI4Vy3ypcQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
