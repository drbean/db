use utf8;
package DB::Schema::Result::MdlFeedbackItem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlFeedbackItem - feedback_items

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

=head1 TABLE: C<mdl_feedback_item>

=cut

__PACKAGE__->table("mdl_feedback_item");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_feedback_item_id_seq'

=head2 feedback

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 template

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 label

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 presentation

  data_type: 'text'
  is_nullable: 0

=head2 typ

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 hasvalue

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 position

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 required

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 dependitem

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 dependvalue

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 options

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
    sequence          => "mdl_feedback_item_id_seq",
  },
  "feedback",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "template",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "label",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "presentation",
  { data_type => "text", is_nullable => 0 },
  "typ",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "hasvalue",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "position",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "required",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "dependitem",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "dependvalue",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "options",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F37kEle9n+OGDg9R71L17w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
