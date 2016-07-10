use utf8;
package DB::Schema::Result::MdlGradeImportValues;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeImportValues - Temporary table for importing grades

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

=head1 TABLE: C<mdl_grade_import_values>

=cut

__PACKAGE__->table("mdl_grade_import_values");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_import_values_id_seq'

=head2 itemid

  data_type: 'bigint'
  is_nullable: 1

=head2 newgradeitem

  data_type: 'bigint'
  is_nullable: 1

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 finalgrade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 feedback

  data_type: 'text'
  is_nullable: 1

=head2 importcode

  data_type: 'bigint'
  is_nullable: 0

=head2 importer

  data_type: 'bigint'
  is_nullable: 1

=head2 importonlyfeedback

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_grade_import_values_id_seq",
  },
  "itemid",
  { data_type => "bigint", is_nullable => 1 },
  "newgradeitem",
  { data_type => "bigint", is_nullable => 1 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "finalgrade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "feedback",
  { data_type => "text", is_nullable => 1 },
  "importcode",
  { data_type => "bigint", is_nullable => 0 },
  "importer",
  { data_type => "bigint", is_nullable => 1 },
  "importonlyfeedback",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jQGLzPCjsEDrJO7OQQNv0A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
