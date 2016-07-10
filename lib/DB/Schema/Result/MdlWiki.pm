use utf8;
package DB::Schema::Result::MdlWiki;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWiki - Stores Wiki activity configuration

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

=head1 TABLE: C<mdl_wiki>

=cut

__PACKAGE__->table("mdl_wiki");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_wiki_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: 'Wiki'
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 1

=head2 introformat

  data_type: 'smallint'
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

=head2 firstpagetitle

  data_type: 'varchar'
  default_value: 'First Page'
  is_nullable: 0
  size: 255

=head2 wikimode

  data_type: 'varchar'
  default_value: 'collaborative'
  is_nullable: 0
  size: 20

=head2 defaultformat

  data_type: 'varchar'
  default_value: 'creole'
  is_nullable: 0
  size: 20

=head2 forceformat

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 editbegin

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 editend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_wiki_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  {
    data_type => "varchar",
    default_value => "Wiki",
    is_nullable => 0,
    size => 255,
  },
  "intro",
  { data_type => "text", is_nullable => 1 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "firstpagetitle",
  {
    data_type => "varchar",
    default_value => "First Page",
    is_nullable => 0,
    size => 255,
  },
  "wikimode",
  {
    data_type => "varchar",
    default_value => "collaborative",
    is_nullable => 0,
    size => 20,
  },
  "defaultformat",
  {
    data_type => "varchar",
    default_value => "creole",
    is_nullable => 0,
    size => 20,
  },
  "forceformat",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "editbegin",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "editend",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Z9qP6zoLG5aoMMcvzbu+fg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
