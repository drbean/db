use utf8;
package DB::Schema::Result::MdlToolMonitorEvents;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlToolMonitorEvents - A table that keeps a log of events related to subscriptions

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

=head1 TABLE: C<mdl_tool_monitor_events>

=cut

__PACKAGE__->table("mdl_tool_monitor_events");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tool_monitor_events_id_seq'

=head2 eventname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextlevel

  data_type: 'bigint'
  is_nullable: 0

=head2 contextinstanceid

  data_type: 'bigint'
  is_nullable: 0

=head2 link

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 courseid

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
    sequence          => "mdl_tool_monitor_events_id_seq",
  },
  "eventname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "contextlevel",
  { data_type => "bigint", is_nullable => 0 },
  "contextinstanceid",
  { data_type => "bigint", is_nullable => 0 },
  "link",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "courseid",
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:z4Y4eiwyCepS+69c/3rTeg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
