use utf8;
package DB::Schema::Result::MdlForum;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlForum - Forums contain and structure discussion

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

=head1 TABLE: C<mdl_forum>

=cut

__PACKAGE__->table("mdl_forum");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_forum_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 type

  data_type: 'varchar'
  default_value: 'general'
  is_nullable: 0
  size: 20

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 0

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 assessed

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 assesstimestart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 assesstimefinish

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 scale

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 maxbytes

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 maxattachments

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 forcesubscribe

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 trackingtype

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 rsstype

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 rssarticles

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 warnafter

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 blockafter

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 blockperiod

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 completiondiscussions

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 completionreplies

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 completionposts

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 displaywordcount

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
    sequence          => "mdl_forum_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "type",
  {
    data_type => "varchar",
    default_value => "general",
    is_nullable => 0,
    size => 20,
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "assessed",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assesstimestart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assesstimefinish",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "scale",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "maxbytes",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "maxattachments",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "forcesubscribe",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "trackingtype",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "rsstype",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "rssarticles",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "warnafter",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "blockafter",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "blockperiod",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "completiondiscussions",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "completionreplies",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "completionposts",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "displaywordcount",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nB/uvpbn5kxQRmJZY4Geyw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
