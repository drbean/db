use utf8;
package DB::Schema::Result::MdlQuestionAttempts;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionAttempts

=head1 DESCRIPTION

Each row here corresponds to an attempt at one question, as part of a question_usage. A question_attempt will have some question_attempt_steps

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

=head1 TABLE: C<mdl_question_attempts>

=cut

__PACKAGE__->table("mdl_question_attempts");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_attempts_id_seq'

=head2 questionusageid

  data_type: 'bigint'
  is_nullable: 0

=head2 slot

  data_type: 'bigint'
  is_nullable: 0

=head2 behaviour

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 questionid

  data_type: 'bigint'
  is_nullable: 0

=head2 variant

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 maxmark

  data_type: 'numeric'
  is_nullable: 0
  size: [12,7]

=head2 minfraction

  data_type: 'numeric'
  is_nullable: 0
  size: [12,7]

=head2 maxfraction

  data_type: 'numeric'
  default_value: 1
  is_nullable: 0
  size: [12,7]

=head2 flagged

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 questionsummary

  data_type: 'text'
  is_nullable: 1

=head2 rightanswer

  data_type: 'text'
  is_nullable: 1

=head2 responsesummary

  data_type: 'text'
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_attempts_id_seq",
  },
  "questionusageid",
  { data_type => "bigint", is_nullable => 0 },
  "slot",
  { data_type => "bigint", is_nullable => 0 },
  "behaviour",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "questionid",
  { data_type => "bigint", is_nullable => 0 },
  "variant",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "maxmark",
  { data_type => "numeric", is_nullable => 0, size => [12, 7] },
  "minfraction",
  { data_type => "numeric", is_nullable => 0, size => [12, 7] },
  "maxfraction",
  {
    data_type => "numeric",
    default_value => 1,
    is_nullable => 0,
    size => [12, 7],
  },
  "flagged",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "questionsummary",
  { data_type => "text", is_nullable => 1 },
  "rightanswer",
  { data_type => "text", is_nullable => 1 },
  "responsesummary",
  { data_type => "text", is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_quesatte_queslo_uix>

=over 4

=item * L</questionusageid>

=item * L</slot>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_quesatte_queslo_uix", ["questionusageid", "slot"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dM+HJqOF6bxqZqnNvpB6qQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
