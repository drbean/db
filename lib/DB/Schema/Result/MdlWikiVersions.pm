use utf8;
package DB::Schema::Result::MdlWikiVersions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWikiVersions - Stores wiki page history

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

=head1 TABLE: C<mdl_wiki_versions>

=cut

__PACKAGE__->table("mdl_wiki_versions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_wiki_versions_id_seq'

=head2 pageid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 0

=head2 contentformat

  data_type: 'varchar'
  default_value: 'creole'
  is_nullable: 0
  size: 20

=head2 version

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

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
    sequence          => "mdl_wiki_versions_id_seq",
  },
  "pageid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 0 },
  "contentformat",
  {
    data_type => "varchar",
    default_value => "creole",
    is_nullable => 0,
    size => 20,
  },
  "version",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:t1HynKeuHkALBMD5+elPgA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
