use utf8;
package DB::Schema::Result::MdlGradingDefinitions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradingDefinitions

=head1 DESCRIPTION

Contains the basic information about an advanced grading form defined in the given gradable area

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

=head1 TABLE: C<mdl_grading_definitions>

=cut

__PACKAGE__->table("mdl_grading_definitions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grading_definitions_id_seq'

=head2 areaid

  data_type: 'bigint'
  is_nullable: 0

=head2 method

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  is_nullable: 1

=head2 status

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 copiedfromid

  data_type: 'bigint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 usercreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 0

=head2 timecopied

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 options

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_grading_definitions_id_seq",
  },
  "areaid",
  { data_type => "bigint", is_nullable => 0 },
  "method",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", is_nullable => 1 },
  "status",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "copiedfromid",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "usercreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "usermodified",
  { data_type => "bigint", is_nullable => 0 },
  "timecopied",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "options",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_graddefi_aremet_uix>

=over 4

=item * L</areaid>

=item * L</method>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_graddefi_aremet_uix", ["areaid", "method"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/4GYFER83ZoQX34EQozWBQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
