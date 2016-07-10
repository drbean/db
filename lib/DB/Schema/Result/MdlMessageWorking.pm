use utf8;
package DB::Schema::Result::MdlMessageWorking;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMessageWorking

=head1 DESCRIPTION

Lists all the messages and processors that need to be processed

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

=head1 TABLE: C<mdl_message_working>

=cut

__PACKAGE__->table("mdl_message_working");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_message_working_id_seq'

=head2 unreadmessageid

  data_type: 'bigint'
  is_nullable: 0

=head2 processorid

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_message_working_id_seq",
  },
  "unreadmessageid",
  { data_type => "bigint", is_nullable => 0 },
  "processorid",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Jk+U1KHFNImJ6Uk42Zle2w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
