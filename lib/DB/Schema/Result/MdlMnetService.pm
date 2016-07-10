use utf8;
package DB::Schema::Result::MdlMnetService;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetService - A service is a group of functions

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

=head1 TABLE: C<mdl_mnet_service>

=cut

__PACKAGE__->table("mdl_mnet_service");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnet_service_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 description

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 apiversion

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 offer

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
    sequence          => "mdl_mnet_service_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "description",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "apiversion",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "offer",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zJxSQUCe5HsB2B1qj5yR4w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
