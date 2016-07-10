use utf8;
package DB::Schema::Result::MdlData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlData - all database activities

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

=head1 TABLE: C<mdl_data>

=cut

__PACKAGE__->table("mdl_data");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_data_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

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

=head2 comments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timeavailablefrom

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeavailableto

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeviewfrom

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeviewto

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 requiredentries

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 requiredentriestoview

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 maxentries

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 rssarticles

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 singletemplate

  data_type: 'text'
  is_nullable: 1

=head2 listtemplate

  data_type: 'text'
  is_nullable: 1

=head2 listtemplateheader

  data_type: 'text'
  is_nullable: 1

=head2 listtemplatefooter

  data_type: 'text'
  is_nullable: 1

=head2 addtemplate

  data_type: 'text'
  is_nullable: 1

=head2 rsstemplate

  data_type: 'text'
  is_nullable: 1

=head2 rsstitletemplate

  data_type: 'text'
  is_nullable: 1

=head2 csstemplate

  data_type: 'text'
  is_nullable: 1

=head2 jstemplate

  data_type: 'text'
  is_nullable: 1

=head2 asearchtemplate

  data_type: 'text'
  is_nullable: 1

=head2 approval

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 manageapproved

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 scale

  data_type: 'bigint'
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

=head2 defaultsort

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 defaultsortdir

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 editany

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 notification

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

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
    sequence          => "mdl_data_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "comments",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timeavailablefrom",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeavailableto",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeviewfrom",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeviewto",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "requiredentries",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "requiredentriestoview",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "maxentries",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "rssarticles",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "singletemplate",
  { data_type => "text", is_nullable => 1 },
  "listtemplate",
  { data_type => "text", is_nullable => 1 },
  "listtemplateheader",
  { data_type => "text", is_nullable => 1 },
  "listtemplatefooter",
  { data_type => "text", is_nullable => 1 },
  "addtemplate",
  { data_type => "text", is_nullable => 1 },
  "rsstemplate",
  { data_type => "text", is_nullable => 1 },
  "rsstitletemplate",
  { data_type => "text", is_nullable => 1 },
  "csstemplate",
  { data_type => "text", is_nullable => 1 },
  "jstemplate",
  { data_type => "text", is_nullable => 1 },
  "asearchtemplate",
  { data_type => "text", is_nullable => 1 },
  "approval",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "manageapproved",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "scale",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assessed",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assesstimestart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assesstimefinish",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "defaultsort",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "defaultsortdir",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "editany",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "notification",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XdlhStz81fqtFR8nfd4K6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
