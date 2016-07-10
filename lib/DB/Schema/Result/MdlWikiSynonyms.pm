use utf8;
package DB::Schema::Result::MdlWikiSynonyms;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWikiSynonyms - Stores wiki pages synonyms

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

=head1 TABLE: C<mdl_wiki_synonyms>

=cut

__PACKAGE__->table("mdl_wiki_synonyms");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_wiki_synonyms_id_seq'

=head2 subwikiid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 pageid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 pagesynonym

  data_type: 'varchar'
  default_value: 'Pagesynonym'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_wiki_synonyms_id_seq",
  },
  "subwikiid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "pageid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "pagesynonym",
  {
    data_type => "varchar",
    default_value => "Pagesynonym",
    is_nullable => 0,
    size => 255,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_wikisyno_pagpag_uix>

=over 4

=item * L</pageid>

=item * L</pagesynonym>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_wikisyno_pagpag_uix", ["pageid", "pagesynonym"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LAMq53s0QIG9FPGpmeFmOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
