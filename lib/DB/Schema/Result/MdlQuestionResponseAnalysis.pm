use utf8;
package DB::Schema::Result::MdlQuestionResponseAnalysis;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionResponseAnalysis - Analysis of student responses given to questions.

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

=head1 TABLE: C<mdl_question_response_analysis>

=cut

__PACKAGE__->table("mdl_question_response_analysis");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_response_analysis_id_seq'

=head2 hashcode

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 whichtries

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 questionid

  data_type: 'bigint'
  is_nullable: 0

=head2 variant

  data_type: 'bigint'
  is_nullable: 1

=head2 subqid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 aid

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 response

  data_type: 'text'
  is_nullable: 1

=head2 credit

  data_type: 'numeric'
  is_nullable: 0
  size: [15,5]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_response_analysis_id_seq",
  },
  "hashcode",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "whichtries",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "questionid",
  { data_type => "bigint", is_nullable => 0 },
  "variant",
  { data_type => "bigint", is_nullable => 1 },
  "subqid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "aid",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "response",
  { data_type => "text", is_nullable => 1 },
  "credit",
  { data_type => "numeric", is_nullable => 0, size => [15, 5] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MEdMLYGDD8HFambz+xfEXw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
