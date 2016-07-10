use utf8;
package DB::Schema::Result::MdlBlockRecentActivity;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBlockRecentActivity - Recent activity block

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

=head1 TABLE: C<mdl_block_recent_activity>

=cut

__PACKAGE__->table("mdl_block_recent_activity");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_block_recent_activity_id_seq'

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 cmid

  data_type: 'bigint'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 action

  data_type: 'smallint'
  is_nullable: 0

=head2 modname

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_block_recent_activity_id_seq",
  },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "cmid",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "action",
  { data_type => "smallint", is_nullable => 0 },
  "modname",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jZG2SZXKg2SXgQZC++LkGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
