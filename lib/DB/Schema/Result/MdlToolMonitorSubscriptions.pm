use utf8;
package DB::Schema::Result::MdlToolMonitorSubscriptions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlToolMonitorSubscriptions - Table to store user subscriptions to various rules

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

=head1 TABLE: C<mdl_tool_monitor_subscriptions>

=cut

__PACKAGE__->table("mdl_tool_monitor_subscriptions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tool_monitor_subscriptions_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 ruleid

  data_type: 'bigint'
  is_nullable: 0

=head2 cmid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 lastnotificationsent

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
    sequence          => "mdl_tool_monitor_subscriptions_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "ruleid",
  { data_type => "bigint", is_nullable => 0 },
  "cmid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "lastnotificationsent",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:x89qah8UYsht0fRzzklZqw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
