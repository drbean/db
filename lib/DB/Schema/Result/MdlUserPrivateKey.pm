use utf8;
package DB::Schema::Result::MdlUserPrivateKey;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUserPrivateKey - access keys used in cookieless scripts - rss, etc.

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

=head1 TABLE: C<mdl_user_private_key>

=cut

__PACKAGE__->table("mdl_user_private_key");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_user_private_key_id_seq'

=head2 script

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 instance

  data_type: 'bigint'
  is_nullable: 1

=head2 iprestriction

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 validuntil

  data_type: 'bigint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_user_private_key_id_seq",
  },
  "script",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "instance",
  { data_type => "bigint", is_nullable => 1 },
  "iprestriction",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "validuntil",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HgjC2oqbtUh9VHGlkNAf1g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
