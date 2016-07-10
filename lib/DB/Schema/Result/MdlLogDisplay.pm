use utf8;
package DB::Schema::Result::MdlLogDisplay;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLogDisplay

=head1 DESCRIPTION

For a particular module/action, specifies a moodle table/field

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

=head1 TABLE: C<mdl_log_display>

=cut

__PACKAGE__->table("mdl_log_display");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_log_display_id_seq'

=head2 module

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 action

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 mtable

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 field

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_log_display_id_seq",
  },
  "module",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "action",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "mtable",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "field",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_logdisp_modact_uix>

=over 4

=item * L</module>

=item * L</action>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_logdisp_modact_uix", ["module", "action"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7Oc2yQ5JTRFudiSPUMwqmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
