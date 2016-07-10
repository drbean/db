use utf8;
package DB::Schema::Result::MdlWikiPages;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWikiPages - Stores wiki pages

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

=head1 TABLE: C<mdl_wiki_pages>

=cut

__PACKAGE__->table("mdl_wiki_pages");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_wiki_pages_id_seq'

=head2 subwikiid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: 'title'
  is_nullable: 0
  size: 255

=head2 cachedcontent

  data_type: 'text'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timerendered

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 pageviews

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 readonly

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
    sequence          => "mdl_wiki_pages_id_seq",
  },
  "subwikiid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "title",
  {
    data_type => "varchar",
    default_value => "title",
    is_nullable => 0,
    size => 255,
  },
  "cachedcontent",
  { data_type => "text", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timerendered",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "pageviews",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "readonly",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_wikipage_subtituse_uix>

=over 4

=item * L</subwikiid>

=item * L</title>

=item * L</userid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_wikipage_subtituse_uix",
  ["subwikiid", "title", "userid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+EuiNrAvdsOWB3iK8iQyDQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
