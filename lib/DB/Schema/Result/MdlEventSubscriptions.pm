use utf8;
package DB::Schema::Result::MdlEventSubscriptions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEventSubscriptions - Tracks subscriptions to remote calendars.

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

=head1 TABLE: C<mdl_event_subscriptions>

=cut

__PACKAGE__->table("mdl_event_subscriptions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_event_subscriptions_id_seq'

=head2 url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 courseid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 groupid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 eventtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 pollinterval

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastupdated

  data_type: 'bigint'
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_event_subscriptions_id_seq",
  },
  "url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "groupid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "eventtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "pollinterval",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastupdated",
  { data_type => "bigint", is_nullable => 1 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mvE+6gIr2X7kZpQw8HOEJg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
