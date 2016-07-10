use utf8;
package DB::Schema::Result::MdlBlockRssClient;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBlockRssClient

=head1 DESCRIPTION

Remote news feed information. Contains the news feed id, the userid of the user who added the feed, the title of the feed itself and a description of the feed contents along with the url used to access the remote feed. Preferredtitle is a field for f

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

=head1 TABLE: C<mdl_block_rss_client>

=cut

__PACKAGE__->table("mdl_block_rss_client");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_block_rss_client_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 title

  data_type: 'text'
  is_nullable: 0

=head2 preferredtitle

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 shared

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 skiptime

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 skipuntil

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
    sequence          => "mdl_block_rss_client_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "title",
  { data_type => "text", is_nullable => 0 },
  "preferredtitle",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "shared",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "skiptime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "skipuntil",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E0v83exv0rUyyeqHAPUCkA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
