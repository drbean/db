use utf8;
package DB::Schema::Result::MdlEventsQueueHandlers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEventsQueueHandlers

=head1 DESCRIPTION

This is the list of queued handlers for processing. The event object is retrieved from the events_queue table. When no further reference is made to the event_queues table, the corresponding entry in the events_queue table should be deleted. Entry sho

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

=head1 TABLE: C<mdl_events_queue_handlers>

=cut

__PACKAGE__->table("mdl_events_queue_handlers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_events_queue_handlers_id_seq'

=head2 queuedeventid

  data_type: 'bigint'
  is_nullable: 0

=head2 handlerid

  data_type: 'bigint'
  is_nullable: 0

=head2 status

  data_type: 'bigint'
  is_nullable: 1

=head2 errormessage

  data_type: 'text'
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_events_queue_handlers_id_seq",
  },
  "queuedeventid",
  { data_type => "bigint", is_nullable => 0 },
  "handlerid",
  { data_type => "bigint", is_nullable => 0 },
  "status",
  { data_type => "bigint", is_nullable => 1 },
  "errormessage",
  { data_type => "text", is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KEeUp0b4nX58e/JW20SO6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
