use utf8;
package DB::Schema::Result::MdlQuestionStatistics;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionStatistics - Statistics for individual questions used in an activity.

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

=head1 TABLE: C<mdl_question_statistics>

=cut

__PACKAGE__->table("mdl_question_statistics");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_statistics_id_seq'

=head2 hashcode

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 questionid

  data_type: 'bigint'
  is_nullable: 0

=head2 slot

  data_type: 'bigint'
  is_nullable: 1

=head2 subquestion

  data_type: 'smallint'
  is_nullable: 0

=head2 variant

  data_type: 'bigint'
  is_nullable: 1

=head2 s

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 effectiveweight

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 negcovar

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 discriminationindex

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 discriminativeefficiency

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 sd

  data_type: 'numeric'
  is_nullable: 1
  size: [15,10]

=head2 facility

  data_type: 'numeric'
  is_nullable: 1
  size: [15,10]

=head2 subquestions

  data_type: 'text'
  is_nullable: 1

=head2 maxmark

  data_type: 'numeric'
  is_nullable: 1
  size: [12,7]

=head2 positions

  data_type: 'text'
  is_nullable: 1

=head2 randomguessscore

  data_type: 'numeric'
  is_nullable: 1
  size: [12,7]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_statistics_id_seq",
  },
  "hashcode",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "questionid",
  { data_type => "bigint", is_nullable => 0 },
  "slot",
  { data_type => "bigint", is_nullable => 1 },
  "subquestion",
  { data_type => "smallint", is_nullable => 0 },
  "variant",
  { data_type => "bigint", is_nullable => 1 },
  "s",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "effectiveweight",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "negcovar",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "discriminationindex",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "discriminativeefficiency",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "sd",
  { data_type => "numeric", is_nullable => 1, size => [15, 10] },
  "facility",
  { data_type => "numeric", is_nullable => 1, size => [15, 10] },
  "subquestions",
  { data_type => "text", is_nullable => 1 },
  "maxmark",
  { data_type => "numeric", is_nullable => 1, size => [12, 7] },
  "positions",
  { data_type => "text", is_nullable => 1 },
  "randomguessscore",
  { data_type => "numeric", is_nullable => 1, size => [12, 7] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pEVU24tx/DOdi3SgRR5FUg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
