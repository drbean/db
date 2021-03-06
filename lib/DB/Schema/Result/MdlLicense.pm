use utf8;
package DB::Schema::Result::MdlLicense;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLicense - store licenses used by moodle

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

=head1 TABLE: C<mdl_license>

=cut

__PACKAGE__->table("mdl_license");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_license_id_seq'

=head2 shortname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fullname

  data_type: 'text'
  is_nullable: 1

=head2 source

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 enabled

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 version

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
    sequence          => "mdl_license_id_seq",
  },
  "shortname",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fullname",
  { data_type => "text", is_nullable => 1 },
  "source",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "enabled",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "version",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3AKJ0Bwp7mdp2Ev5objYyg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
