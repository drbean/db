use utf8;
package DB::Schema::Result::MdlWorkshopAggregations;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopAggregations

=head1 DESCRIPTION

Aggregated grades for assessment are stored here. The aggregated grade for submission is stored in workshop_submissions

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

=head1 TABLE: C<mdl_workshop_aggregations>

=cut

__PACKAGE__->table("mdl_workshop_aggregations");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshop_aggregations_id_seq'

=head2 workshopid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 gradinggrade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 timegraded

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshop_aggregations_id_seq",
  },
  "workshopid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "gradinggrade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "timegraded",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_workaggr_woruse_uix>

=over 4

=item * L</workshopid>

=item * L</userid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_workaggr_woruse_uix", ["workshopid", "userid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aaZFQwmm3cfp0SpU5RsD7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
