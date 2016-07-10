use utf8;
package DB::Schema::Result::MdlWorkshopformNumerrors;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopformNumerrors

=head1 DESCRIPTION

The assessment dimensions definitions of Number of errors grading strategy forms

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

=head1 TABLE: C<mdl_workshopform_numerrors>

=cut

__PACKAGE__->table("mdl_workshopform_numerrors");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshopform_numerrors_id_seq'

=head2 workshopid

  data_type: 'bigint'
  is_nullable: 0

=head2 sort

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 descriptiontrust

  data_type: 'bigint'
  is_nullable: 1

=head2 grade0

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 grade1

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 weight

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshopform_numerrors_id_seq",
  },
  "workshopid",
  { data_type => "bigint", is_nullable => 0 },
  "sort",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "descriptiontrust",
  { data_type => "bigint", is_nullable => 1 },
  "grade0",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "grade1",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "weight",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9d1RMIajyXkroPNKoAyy6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
