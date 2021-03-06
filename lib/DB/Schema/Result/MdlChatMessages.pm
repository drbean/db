use utf8;
package DB::Schema::Result::MdlChatMessages;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlChatMessages - Stores all the actual chat messages

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

=head1 TABLE: C<mdl_chat_messages>

=cut

__PACKAGE__->table("mdl_chat_messages");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_chat_messages_id_seq'

=head2 chatid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 groupid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 system

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 message

  data_type: 'text'
  is_nullable: 0

=head2 timestamp

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
    sequence          => "mdl_chat_messages_id_seq",
  },
  "chatid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "groupid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "system",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "message",
  { data_type => "text", is_nullable => 0 },
  "timestamp",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8d42V+JJZdW6IgMsZM8XRg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
