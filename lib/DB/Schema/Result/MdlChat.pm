use utf8;
package DB::Schema::Result::MdlChat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlChat - Each of these is a chat room

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

=head1 TABLE: C<mdl_chat>

=cut

__PACKAGE__->table("mdl_chat");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_chat_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 0

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 keepdays

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 studentlogs

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 chattime

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 schedule

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

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
    sequence          => "mdl_chat_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "keepdays",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "studentlogs",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "chattime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "schedule",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j/s0v0iXsQcSjNpEvca5dw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
