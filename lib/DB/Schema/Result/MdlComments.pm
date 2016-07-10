use utf8;
package DB::Schema::Result::MdlComments;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlComments - moodle comments module

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

=head1 TABLE: C<mdl_comments>

=cut

__PACKAGE__->table("mdl_comments");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_comments_id_seq'

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 commentarea

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 itemid

  data_type: 'bigint'
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 0

=head2 format

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_comments_id_seq",
  },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "component",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "commentarea",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "itemid",
  { data_type => "bigint", is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 0 },
  "format",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E34cYz+qmq624AeRNgmaaw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
