use utf8;
package DB::Schema::Result::MdlTaskScheduled;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlTaskScheduled - List of scheduled tasks to be run by cron.

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

=head1 TABLE: C<mdl_task_scheduled>

=cut

__PACKAGE__->table("mdl_task_scheduled");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_task_scheduled_id_seq'

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 classname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 lastruntime

  data_type: 'bigint'
  is_nullable: 1

=head2 nextruntime

  data_type: 'bigint'
  is_nullable: 1

=head2 blocking

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 minute

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 25

=head2 hour

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 25

=head2 day

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 25

=head2 month

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 25

=head2 dayofweek

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 25

=head2 faildelay

  data_type: 'bigint'
  is_nullable: 1

=head2 customised

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 disabled

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_task_scheduled_id_seq",
  },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "classname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "lastruntime",
  { data_type => "bigint", is_nullable => 1 },
  "nextruntime",
  { data_type => "bigint", is_nullable => 1 },
  "blocking",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "minute",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 25 },
  "hour",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 25 },
  "day",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 25 },
  "month",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 25 },
  "dayofweek",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 25 },
  "faildelay",
  { data_type => "bigint", is_nullable => 1 },
  "customised",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "disabled",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_tasksche_cla_uix>

=over 4

=item * L</classname>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_tasksche_cla_uix", ["classname"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vsniiI8r+i31tHNgvkaXjw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
