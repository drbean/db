use utf8;
package DB::Schema::Result::MdlMessageRead;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMessageRead - Stores all messages that have been read

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

=head1 TABLE: C<mdl_message_read>

=cut

__PACKAGE__->table("mdl_message_read");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_message_read_id_seq'

=head2 useridfrom

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 useridto

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 subject

  data_type: 'text'
  is_nullable: 1

=head2 fullmessage

  data_type: 'text'
  is_nullable: 1

=head2 fullmessageformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 fullmessagehtml

  data_type: 'text'
  is_nullable: 1

=head2 smallmessage

  data_type: 'text'
  is_nullable: 1

=head2 notification

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 contexturl

  data_type: 'text'
  is_nullable: 1

=head2 contexturlname

  data_type: 'text'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeread

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeuserfromdeleted

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeusertodeleted

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
    sequence          => "mdl_message_read_id_seq",
  },
  "useridfrom",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "useridto",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "subject",
  { data_type => "text", is_nullable => 1 },
  "fullmessage",
  { data_type => "text", is_nullable => 1 },
  "fullmessageformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "fullmessagehtml",
  { data_type => "text", is_nullable => 1 },
  "smallmessage",
  { data_type => "text", is_nullable => 1 },
  "notification",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "contexturl",
  { data_type => "text", is_nullable => 1 },
  "contexturlname",
  { data_type => "text", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeread",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeuserfromdeleted",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeusertodeleted",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1S0M3G6GDcjm1byrbEHT7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
