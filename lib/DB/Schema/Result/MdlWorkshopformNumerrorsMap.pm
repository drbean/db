use utf8;
package DB::Schema::Result::MdlWorkshopformNumerrorsMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopformNumerrorsMap

=head1 DESCRIPTION

This maps the number of errors to a percentual grade for submission

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

=head1 TABLE: C<mdl_workshopform_numerrors_map>

=cut

__PACKAGE__->table("mdl_workshopform_numerrors_map");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshopform_numerrors_map_id_seq'

=head2 workshopid

  data_type: 'bigint'
  is_nullable: 0

=head2 nonegative

  data_type: 'bigint'
  is_nullable: 0

=head2 grade

  data_type: 'numeric'
  is_nullable: 0
  size: [10,5]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshopform_numerrors_map_id_seq",
  },
  "workshopid",
  { data_type => "bigint", is_nullable => 0 },
  "nonegative",
  { data_type => "bigint", is_nullable => 0 },
  "grade",
  { data_type => "numeric", is_nullable => 0, size => [10, 5] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_worknumemap_wornon_uix>

=over 4

=item * L</workshopid>

=item * L</nonegative>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_worknumemap_wornon_uix", ["workshopid", "nonegative"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YX5IWUsGOTb2Ltwl9vx1dQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
