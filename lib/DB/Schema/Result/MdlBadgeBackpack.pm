use utf8;
package DB::Schema::Result::MdlBadgeBackpack;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBadgeBackpack - Defines settings for connecting external backpack

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

=head1 TABLE: C<mdl_badge_backpack>

=cut

__PACKAGE__->table("mdl_badge_backpack");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_badge_backpack_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 backpackurl

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 backpackuid

  data_type: 'bigint'
  is_nullable: 0

=head2 autosync

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_badge_backpack_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "email",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "backpackurl",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "backpackuid",
  { data_type => "bigint", is_nullable => 0 },
  "autosync",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Trl0nqToJDgWdUXYfuYAjQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
