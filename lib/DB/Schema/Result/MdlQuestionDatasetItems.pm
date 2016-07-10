use utf8;
package DB::Schema::Result::MdlQuestionDatasetItems;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionDatasetItems - Individual dataset items

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

=head1 TABLE: C<mdl_question_dataset_items>

=cut

__PACKAGE__->table("mdl_question_dataset_items");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_dataset_items_id_seq'

=head2 definition

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 itemnumber

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_dataset_items_id_seq",
  },
  "definition",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "itemnumber",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+ErMA3QRFSk6zfMopsDPBw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
