use utf8;
package DB::Schema::Result::MdlQuestionAttemptSteps;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionAttemptSteps

=head1 DESCRIPTION

Stores one step in in a question attempt. As well as the data here, the step will have some data in the question_attempt_step_data table.

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

=head1 TABLE: C<mdl_question_attempt_steps>

=cut

__PACKAGE__->table("mdl_question_attempt_steps");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_attempt_steps_id_seq'

=head2 questionattemptid

  data_type: 'bigint'
  is_nullable: 0

=head2 sequencenumber

  data_type: 'bigint'
  is_nullable: 0

=head2 state

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 13

=head2 fraction

  data_type: 'numeric'
  is_nullable: 1
  size: [12,7]

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_attempt_steps_id_seq",
  },
  "questionattemptid",
  { data_type => "bigint", is_nullable => 0 },
  "sequencenumber",
  { data_type => "bigint", is_nullable => 0 },
  "state",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 13 },
  "fraction",
  { data_type => "numeric", is_nullable => 1, size => [12, 7] },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_quesattestep_queseq_uix>

=over 4

=item * L</questionattemptid>

=item * L</sequencenumber>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_quesattestep_queseq_uix",
  ["questionattemptid", "sequencenumber"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:y4ryuzjISf+auy/oDGIsTw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
