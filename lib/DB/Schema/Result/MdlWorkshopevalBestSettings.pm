use utf8;
package DB::Schema::Result::MdlWorkshopevalBestSettings;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopevalBestSettings

=head1 DESCRIPTION

Settings for the grading evaluation subplugin Comparison with the best assessment.

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

=head1 TABLE: C<mdl_workshopeval_best_settings>

=cut

__PACKAGE__->table("mdl_workshopeval_best_settings");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshopeval_best_settings_id_seq'

=head2 workshopid

  data_type: 'bigint'
  is_nullable: 0

=head2 comparison

  data_type: 'smallint'
  default_value: 5
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshopeval_best_settings_id_seq",
  },
  "workshopid",
  { data_type => "bigint", is_nullable => 0 },
  "comparison",
  { data_type => "smallint", default_value => 5, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_workbestsett_wor_uix>

=over 4

=item * L</workshopid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_workbestsett_wor_uix", ["workshopid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cVChYQEgxMEOqjdowkuRlg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
