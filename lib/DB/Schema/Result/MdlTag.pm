use utf8;
package DB::Schema::Result::MdlTag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlTag

=head1 DESCRIPTION

Tag table - this generic table will replace the old "tags" table.

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

=head1 TABLE: C<mdl_tag>

=cut

__PACKAGE__->table("mdl_tag");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tag_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 tagcollid

  data_type: 'bigint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 rawname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 isstandard

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 flag

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_tag_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "tagcollid",
  { data_type => "bigint", is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "rawname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "isstandard",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "flag",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_tag_tagnam_uix>

=over 4

=item * L</tagcollid>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_tag_tagnam_uix", ["tagcollid", "name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+5c19jPUQ6iV04WAXTWjFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
