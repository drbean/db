use utf8;
package DB::Schema::Result::MdlAssignmentUpgrade;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignmentUpgrade - Info about upgraded assignments

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

=head1 TABLE: C<mdl_assignment_upgrade>

=cut

__PACKAGE__->table("mdl_assignment_upgrade");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assignment_upgrade_id_seq'

=head2 oldcmid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 oldinstance

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 newcmid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 newinstance

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timecreated

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
    sequence          => "mdl_assignment_upgrade_id_seq",
  },
  "oldcmid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "oldinstance",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "newcmid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "newinstance",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yqxuMmPdeu5noZ8NTsC8Bg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
