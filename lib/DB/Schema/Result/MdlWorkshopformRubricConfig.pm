use utf8;
package DB::Schema::Result::MdlWorkshopformRubricConfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopformRubricConfig - Configuration table for the Rubric grading strategy

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

=head1 TABLE: C<mdl_workshopform_rubric_config>

=cut

__PACKAGE__->table("mdl_workshopform_rubric_config");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshopform_rubric_config_id_seq'

=head2 workshopid

  data_type: 'bigint'
  is_nullable: 0

=head2 layout

  data_type: 'varchar'
  default_value: 'list'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshopform_rubric_config_id_seq",
  },
  "workshopid",
  { data_type => "bigint", is_nullable => 0 },
  "layout",
  {
    data_type => "varchar",
    default_value => "list",
    is_nullable => 1,
    size => 30,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_workrubrconf_wor_uix>

=over 4

=item * L</workshopid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_workrubrconf_wor_uix", ["workshopid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lY0lic1BHs4dyZTAlurX4g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
