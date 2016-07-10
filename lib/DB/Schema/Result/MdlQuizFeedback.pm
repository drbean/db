use utf8;
package DB::Schema::Result::MdlQuizFeedback;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizFeedback

=head1 DESCRIPTION

Feedback given to students based on which grade band their overall score lies.

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

=head1 TABLE: C<mdl_quiz_feedback>

=cut

__PACKAGE__->table("mdl_quiz_feedback");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_feedback_id_seq'

=head2 quizid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 feedbacktext

  data_type: 'text'
  is_nullable: 0

=head2 feedbacktextformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 mingrade

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 maxgrade

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_feedback_id_seq",
  },
  "quizid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "feedbacktext",
  { data_type => "text", is_nullable => 0 },
  "feedbacktextformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "mingrade",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "maxgrade",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PQkmntNBBba0V4K2Fl1FTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
