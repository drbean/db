use utf8;
package DB::Schema::Result::MdlToolMonitorHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlToolMonitorHistory - Table to store history of message notifications sent

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

=head1 TABLE: C<mdl_tool_monitor_history>

=cut

__PACKAGE__->table("mdl_tool_monitor_history");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tool_monitor_history_id_seq'

=head2 sid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 timesent

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_tool_monitor_history_id_seq",
  },
  "sid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "timesent",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_toolmonihist_sidusetim_uix>

=over 4

=item * L</sid>

=item * L</userid>

=item * L</timesent>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_toolmonihist_sidusetim_uix",
  ["sid", "userid", "timesent"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uP/pSoCbqpTUjF4FUerTLQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
