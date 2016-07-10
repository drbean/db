use utf8;
package DB::Schema::Result::MdlPost;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlPost

=head1 DESCRIPTION

Generic post table to hold data blog entries etc in different modules

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

=head1 TABLE: C<mdl_post>

=cut

__PACKAGE__->table("mdl_post");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_post_id_seq'

=head2 module

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 groupid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 moduleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 coursemoduleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 subject

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 summary

  data_type: 'text'
  is_nullable: 1

=head2 content

  data_type: 'text'
  is_nullable: 1

=head2 uniquehash

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 rating

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 format

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 summaryformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 attachment

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 publishstate

  data_type: 'varchar'
  default_value: 'draft'
  is_nullable: 0
  size: 20

=head2 lastmodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 created

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_post_id_seq",
  },
  "module",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "groupid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "moduleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "coursemoduleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "subject",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "summary",
  { data_type => "text", is_nullable => 1 },
  "content",
  { data_type => "text", is_nullable => 1 },
  "uniquehash",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "rating",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "format",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "summaryformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "attachment",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "publishstate",
  {
    data_type => "varchar",
    default_value => "draft",
    is_nullable => 0,
    size => 20,
  },
  "lastmodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "created",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "usermodified",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_post_iduse_uix>

=over 4

=item * L</id>

=item * L</userid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_post_iduse_uix", ["id", "userid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WQHc5clJVJOtjZaGnnsQLA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
