use utf8;
package DB::Schema::Result::MdlForumPosts;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlForumPosts - All posts are stored in this table

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

=head1 TABLE: C<mdl_forum_posts>

=cut

__PACKAGE__->table("mdl_forum_posts");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_forum_posts_id_seq'

=head2 discussion

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 parent

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 created

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 modified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 mailed

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 subject

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 message

  data_type: 'text'
  is_nullable: 0

=head2 messageformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 messagetrust

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 attachment

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 totalscore

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 mailnow

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
    sequence          => "mdl_forum_posts_id_seq",
  },
  "discussion",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "parent",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "created",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "modified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "mailed",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "subject",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "message",
  { data_type => "text", is_nullable => 0 },
  "messageformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "messagetrust",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "attachment",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "totalscore",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "mailnow",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8o6COIMhDvLwDz7NhFBKOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
