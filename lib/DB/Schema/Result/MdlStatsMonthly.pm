use utf8;
package DB::Schema::Result::MdlStatsMonthly;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlStatsMonthly - To accumulate monthly stats

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

=head1 TABLE: C<mdl_stats_monthly>

=cut

__PACKAGE__->table("mdl_stats_monthly");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_stats_monthly_id_seq'

=head2 courseid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 roleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 stattype

  data_type: 'varchar'
  default_value: 'activity'
  is_nullable: 0
  size: 20

=head2 stat1

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 stat2

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
    sequence          => "mdl_stats_monthly_id_seq",
  },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeend",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "roleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "stattype",
  {
    data_type => "varchar",
    default_value => "activity",
    is_nullable => 0,
    size => 20,
  },
  "stat1",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "stat2",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wMOy4Mx1Lj6PrG4QFasZ5w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
