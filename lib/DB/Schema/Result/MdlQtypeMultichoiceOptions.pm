use utf8;
package DB::Schema::Result::MdlQtypeMultichoiceOptions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQtypeMultichoiceOptions - Options for multiple choice questions

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

=head1 TABLE: C<mdl_qtype_multichoice_options>

=cut

__PACKAGE__->table("mdl_qtype_multichoice_options");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_qtype_multichoice_options_id_seq'

=head2 questionid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 layout

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 single

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 shuffleanswers

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 correctfeedback

  data_type: 'text'
  is_nullable: 0

=head2 correctfeedbackformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 partiallycorrectfeedback

  data_type: 'text'
  is_nullable: 0

=head2 partiallycorrectfeedbackformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 incorrectfeedback

  data_type: 'text'
  is_nullable: 0

=head2 incorrectfeedbackformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 answernumbering

  data_type: 'varchar'
  default_value: 'abc'
  is_nullable: 0
  size: 10

=head2 shownumcorrect

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_qtype_multichoice_options_id_seq",
  },
  "questionid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "layout",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "single",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "shuffleanswers",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "correctfeedback",
  { data_type => "text", is_nullable => 0 },
  "correctfeedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "partiallycorrectfeedback",
  { data_type => "text", is_nullable => 0 },
  "partiallycorrectfeedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "incorrectfeedback",
  { data_type => "text", is_nullable => 0 },
  "incorrectfeedbackformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "answernumbering",
  {
    data_type => "varchar",
    default_value => "abc",
    is_nullable => 0,
    size => 10,
  },
  "shownumcorrect",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_qtypmultopti_que_uix>

=over 4

=item * L</questionid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_qtypmultopti_que_uix", ["questionid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qiQhhECt1hv3tspMvRfkqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
