use utf8;
package DB::Schema::Result::MdlStatsUserMonthly;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlStatsUserMonthly - To accumulate monthly stats per course/user

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

=head1 TABLE: C<mdl_stats_user_monthly>

=cut

__PACKAGE__->table("mdl_stats_user_monthly");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_stats_user_monthly_id_seq'

=head2 courseid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 roleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeend

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 statsreads

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 statswrites

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 stattype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_stats_user_monthly_id_seq",
  },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "roleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeend",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "statsreads",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "statswrites",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "stattype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zqv5dwsqA/ulRmRDZiz6OA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
