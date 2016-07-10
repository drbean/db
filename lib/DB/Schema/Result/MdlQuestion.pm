use utf8;
package DB::Schema::Result::MdlQuestion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestion - The questions themselves

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

=head1 TABLE: C<mdl_question>

=cut

__PACKAGE__->table("mdl_question");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_id_seq'

=head2 category

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 parent

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 questiontext

  data_type: 'text'
  is_nullable: 0

=head2 questiontextformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 generalfeedback

  data_type: 'text'
  is_nullable: 0

=head2 generalfeedbackformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 defaultmark

  data_type: 'numeric'
  default_value: 1
  is_nullable: 0
  size: [12,7]

=head2 penalty

  data_type: 'numeric'
  default_value: 0.3333333
  is_nullable: 0
  size: [12,7]

=head2 qtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 length

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 stamp

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 hidden

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 createdby

  data_type: 'bigint'
  is_nullable: 1

=head2 modifiedby

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_id_seq",
  },
  "category",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "parent",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "questiontext",
  { data_type => "text", is_nullable => 0 },
  "questiontextformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "generalfeedback",
  { data_type => "text", is_nullable => 0 },
  "generalfeedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "defaultmark",
  {
    data_type => "numeric",
    default_value => 1,
    is_nullable => 0,
    size => [12, 7],
  },
  "penalty",
  {
    data_type => "numeric",
    default_value => 0.3333333,
    is_nullable => 0,
    size => [12, 7],
  },
  "qtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "length",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "stamp",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "version",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "hidden",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "createdby",
  { data_type => "bigint", is_nullable => 1 },
  "modifiedby",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P88tJdkrI5AV3JtSRgOtkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
