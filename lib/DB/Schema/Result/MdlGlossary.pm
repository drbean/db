use utf8;
package DB::Schema::Result::MdlGlossary;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGlossary - all glossaries

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

=head1 TABLE: C<mdl_glossary>

=cut

__PACKAGE__->table("mdl_glossary");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_glossary_id_seq'

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

=head2 allowduplicatedentries

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 displayformat

  data_type: 'varchar'
  default_value: 'dictionary'
  is_nullable: 0
  size: 50

=head2 mainglossary

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 showspecial

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 showalphabet

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 showall

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 allowcomments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 allowprintview

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 usedynalink

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 defaultapproval

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 approvaldisplayformat

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 0
  size: 50

=head2 globalglossary

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 entbypage

  data_type: 'smallint'
  default_value: 10
  is_nullable: 0

=head2 editalways

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 rsstype

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 rssarticles

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

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 completionentries

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_glossary_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "allowduplicatedentries",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "displayformat",
  {
    data_type => "varchar",
    default_value => "dictionary",
    is_nullable => 0,
    size => 50,
  },
  "mainglossary",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "showspecial",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "showalphabet",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "showall",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "allowcomments",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "allowprintview",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "usedynalink",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "defaultapproval",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "approvaldisplayformat",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 0,
    size => 50,
  },
  "globalglossary",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "entbypage",
  { data_type => "smallint", default_value => 10, is_nullable => 0 },
  "editalways",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "rsstype",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "rssarticles",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "assessed",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assesstimestart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "assesstimefinish",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "scale",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "completionentries",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xAETxRnGgFLdV4K/66OBLQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
