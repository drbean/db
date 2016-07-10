use utf8;
package DB::Schema::Result::MdlChatUsers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlChatUsers - Keeps track of which users are in which chat rooms

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

=head1 TABLE: C<mdl_chat_users>

=cut

__PACKAGE__->table("mdl_chat_users");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_chat_users_id_seq'

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

=head2 version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 ip

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 firstping

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastping

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastmessageping

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 sid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lang

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_chat_users_id_seq",
  },
  "chatid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "groupid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "version",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
  "ip",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "firstping",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastping",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastmessageping",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "sid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lang",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7hHZ5HcntoiykqzLR6fvjQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
