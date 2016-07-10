use utf8;
package DB::Schema::Result::MdlExternalTokens;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlExternalTokens - Security tokens for accessing of external services

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

=head1 TABLE: C<mdl_external_tokens>

=cut

__PACKAGE__->table("mdl_external_tokens");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_external_tokens_id_seq'

=head2 token

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 tokentype

  data_type: 'smallint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 externalserviceid

  data_type: 'bigint'
  is_nullable: 0

=head2 sid

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 creatorid

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 iprestriction

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 validuntil

  data_type: 'bigint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 lastaccess

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_external_tokens_id_seq",
  },
  "token",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "tokentype",
  { data_type => "smallint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "externalserviceid",
  { data_type => "bigint", is_nullable => 0 },
  "sid",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "creatorid",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "iprestriction",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "validuntil",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "lastaccess",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Uq1iK6Hpzim1VGUqMn0iJw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
