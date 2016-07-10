use utf8;
package DB::Schema::Result::MdlToolCustomlang;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlToolCustomlang

=head1 DESCRIPTION

Contains the working checkout of all strings and their customization

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

=head1 TABLE: C<mdl_tool_customlang>

=cut

__PACKAGE__->table("mdl_tool_customlang");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tool_customlang_id_seq'

=head2 lang

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 componentid

  data_type: 'bigint'
  is_nullable: 0

=head2 stringid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 original

  data_type: 'text'
  is_nullable: 0

=head2 master

  data_type: 'text'
  is_nullable: 1

=head2 local

  data_type: 'text'
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 timecustomized

  data_type: 'bigint'
  is_nullable: 1

=head2 outdated

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 modified

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_tool_customlang_id_seq",
  },
  "lang",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "componentid",
  { data_type => "bigint", is_nullable => 0 },
  "stringid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "original",
  { data_type => "text", is_nullable => 0 },
  "master",
  { data_type => "text", is_nullable => 1 },
  "local",
  { data_type => "text", is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "timecustomized",
  { data_type => "bigint", is_nullable => 1 },
  "outdated",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "modified",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_toolcust_lancomstr_uix>

=over 4

=item * L</lang>

=item * L</componentid>

=item * L</stringid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_toolcust_lancomstr_uix",
  ["lang", "componentid", "stringid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2CcoBXn6gNE4YasrrsB1LA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
