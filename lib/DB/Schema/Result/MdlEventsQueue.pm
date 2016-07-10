use utf8;
package DB::Schema::Result::MdlEventsQueue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEventsQueue

=head1 DESCRIPTION

This table is for storing queued events. It stores only one copy of the eventdata here, and entries from this table are being references by the event_queue_handlers table.

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

=head1 TABLE: C<mdl_events_queue>

=cut

__PACKAGE__->table("mdl_events_queue");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_events_queue_id_seq'

=head2 eventdata

  data_type: 'text'
  is_nullable: 0

=head2 stackdump

  data_type: 'text'
  is_nullable: 1

=head2 userid

  data_type: 'bigint'
  is_nullable: 1

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
    sequence          => "mdl_events_queue_id_seq",
  },
  "eventdata",
  { data_type => "text", is_nullable => 0 },
  "stackdump",
  { data_type => "text", is_nullable => 1 },
  "userid",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Wm1W1Eah5fDGuJYFuTZBAQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
