use utf8;
package DB::Schema::Result::MdlWorkshopallocationScheduled;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopallocationScheduled - Stores the allocation settings for the scheduled allocator

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

=head1 TABLE: C<mdl_workshopallocation_scheduled>

=cut

__PACKAGE__->table("mdl_workshopallocation_scheduled");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshopallocation_scheduled_id_seq'

=head2 workshopid

  data_type: 'bigint'
  is_nullable: 0

=head2 enabled

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 submissionend

  data_type: 'bigint'
  is_nullable: 0

=head2 timeallocated

  data_type: 'bigint'
  is_nullable: 1

=head2 settings

  data_type: 'text'
  is_nullable: 1

=head2 resultstatus

  data_type: 'bigint'
  is_nullable: 1

=head2 resultmessage

  data_type: 'varchar'
  is_nullable: 1
  size: 1333

=head2 resultlog

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshopallocation_scheduled_id_seq",
  },
  "workshopid",
  { data_type => "bigint", is_nullable => 0 },
  "enabled",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "submissionend",
  { data_type => "bigint", is_nullable => 0 },
  "timeallocated",
  { data_type => "bigint", is_nullable => 1 },
  "settings",
  { data_type => "text", is_nullable => 1 },
  "resultstatus",
  { data_type => "bigint", is_nullable => 1 },
  "resultmessage",
  { data_type => "varchar", is_nullable => 1, size => 1333 },
  "resultlog",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_worksche_wor_uix>

=over 4

=item * L</workshopid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_worksche_wor_uix", ["workshopid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aToCQfa2VHUrIOwup7gD+A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
