use utf8;
package DB::Schema::Result::MdlExternalFunctions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlExternalFunctions - list of all external functions

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

=head1 TABLE: C<mdl_external_functions>

=cut

__PACKAGE__->table("mdl_external_functions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_external_functions_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 classname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 methodname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 classpath

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 capabilities

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 services

  data_type: 'varchar'
  is_nullable: 1
  size: 1333

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_external_functions_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "classname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "methodname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "classpath",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "capabilities",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "services",
  { data_type => "varchar", is_nullable => 1, size => 1333 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_extefunc_nam_uix>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_extefunc_nam_uix", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DDxRE+HWHrYd+oNbCVDO+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
