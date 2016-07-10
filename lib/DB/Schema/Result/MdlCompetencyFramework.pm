use utf8;
package DB::Schema::Result::MdlCompetencyFramework;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCompetencyFramework - List of competency frameworks.

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

=head1 TABLE: C<mdl_competency_framework>

=cut

__PACKAGE__->table("mdl_competency_framework");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_competency_framework_id_seq'

=head2 shortname

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 idnumber

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 scaleid

  data_type: 'bigint'
  is_nullable: 1

=head2 scaleconfiguration

  data_type: 'text'
  is_nullable: 0

=head2 visible

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 taxonomies

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_competency_framework_id_seq",
  },
  "shortname",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "idnumber",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "scaleid",
  { data_type => "bigint", is_nullable => 1 },
  "scaleconfiguration",
  { data_type => "text", is_nullable => 0 },
  "visible",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "taxonomies",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "usermodified",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_compfram_idn_uix>

=over 4

=item * L</idnumber>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_compfram_idn_uix", ["idnumber"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kFw1n8SZVT0kvHYewiqJPw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
