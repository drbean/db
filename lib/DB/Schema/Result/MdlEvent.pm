use utf8;
package DB::Schema::Result::MdlEvent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEvent - For everything with a time associated to it

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

=head1 TABLE: C<mdl_event>

=cut

__PACKAGE__->table("mdl_event");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_event_id_seq'

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 format

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

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

=head2 repeatid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 modulename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 instance

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 eventtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 timestart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeduration

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 visible

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 uuid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 sequence

  accessor: undef
  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 subscriptionid

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_event_id_seq",
  },
  "name",
  { data_type => "text", is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "format",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "groupid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "repeatid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "modulename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "instance",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "eventtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "timestart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeduration",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "uuid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "sequence",
  {
    accessor      => undef,
    data_type     => "bigint",
    default_value => 1,
    is_nullable   => 0,
  },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "subscriptionid",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VhkgnqN27zewQMq3xYDJag


# man DBIx::Class::Schema::Loader::Base(3)

__PACKAGE__->add_column('+sequence' => { accessor => 'column_sequence' });

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
