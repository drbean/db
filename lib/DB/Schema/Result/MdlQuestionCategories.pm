use utf8;
package DB::Schema::Result::MdlQuestionCategories;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionCategories - Categories are for grouping questions

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

=head1 TABLE: C<mdl_question_categories>

=cut

__PACKAGE__->table("mdl_question_categories");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_categories_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 contextid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 info

  data_type: 'text'
  is_nullable: 0

=head2 infoformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 stamp

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 parent

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 sortorder

  data_type: 'bigint'
  default_value: 999
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_categories_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "contextid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "info",
  { data_type => "text", is_nullable => 0 },
  "infoformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "stamp",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "parent",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 999, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BIgt0fyw2vW4yZteJP7wkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
