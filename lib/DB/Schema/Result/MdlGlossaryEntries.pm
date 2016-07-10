use utf8;
package DB::Schema::Result::MdlGlossaryEntries;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGlossaryEntries - all glossary entries

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

=head1 TABLE: C<mdl_glossary_entries>

=cut

__PACKAGE__->table("mdl_glossary_entries");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_glossary_entries_id_seq'

=head2 glossaryid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 concept

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 definition

  data_type: 'text'
  is_nullable: 0

=head2 definitionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 definitiontrust

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 attachment

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 teacherentry

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 sourceglossaryid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 usedynalink

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 casesensitive

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 fullmatch

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 approved

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_glossary_entries_id_seq",
  },
  "glossaryid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "concept",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "definition",
  { data_type => "text", is_nullable => 0 },
  "definitionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "definitiontrust",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "attachment",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "teacherentry",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "sourceglossaryid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "usedynalink",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "casesensitive",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "fullmatch",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "approved",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s0r/pgjHVg4rCAOpoJSS3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
