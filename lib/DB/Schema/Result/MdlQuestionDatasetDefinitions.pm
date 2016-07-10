use utf8;
package DB::Schema::Result::MdlQuestionDatasetDefinitions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionDatasetDefinitions - Organises and stores properties for dataset items

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

=head1 TABLE: C<mdl_question_dataset_definitions>

=cut

__PACKAGE__->table("mdl_question_dataset_definitions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_dataset_definitions_id_seq'

=head2 category

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 options

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 itemcount

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_dataset_definitions_id_seq",
  },
  "category",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "type",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "options",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "itemcount",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SPo+B8dQ42YUs2QNIsVyGg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
