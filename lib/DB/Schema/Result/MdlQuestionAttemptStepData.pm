use utf8;
package DB::Schema::Result::MdlQuestionAttemptStepData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionAttemptStepData

=head1 DESCRIPTION

Each question_attempt_step has an associative array of the data that was submitted by the user in the POST request. It can also contain extra data from the question type or behaviour to avoid re-computation. The convention is that names belonging to 

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

=head1 TABLE: C<mdl_question_attempt_step_data>

=cut

__PACKAGE__->table("mdl_question_attempt_step_data");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_attempt_step_data_id_seq'

=head2 attemptstepid

  data_type: 'bigint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 value

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_attempt_step_data_id_seq",
  },
  "attemptstepid",
  { data_type => "bigint", is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "value",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_quesattestepdata_attna_uix>

=over 4

=item * L</attemptstepid>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_quesattestepdata_attna_uix", ["attemptstepid", "name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eKC7F9nOoZ8C1sTbF8vJqA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
