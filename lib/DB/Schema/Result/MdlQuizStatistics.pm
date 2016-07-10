use utf8;
package DB::Schema::Result::MdlQuizStatistics;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizStatistics

=head1 DESCRIPTION

table to cache results from analysis done in statistics report for quizzes.

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

=head1 TABLE: C<mdl_quiz_statistics>

=cut

__PACKAGE__->table("mdl_quiz_statistics");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_statistics_id_seq'

=head2 hashcode

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 whichattempts

  data_type: 'smallint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 firstattemptscount

  data_type: 'bigint'
  is_nullable: 0

=head2 highestattemptscount

  data_type: 'bigint'
  is_nullable: 0

=head2 lastattemptscount

  data_type: 'bigint'
  is_nullable: 0

=head2 allattemptscount

  data_type: 'bigint'
  is_nullable: 0

=head2 firstattemptsavg

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 highestattemptsavg

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 lastattemptsavg

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 allattemptsavg

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 median

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 standarddeviation

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 skewness

  data_type: 'numeric'
  is_nullable: 1
  size: [15,10]

=head2 kurtosis

  data_type: 'numeric'
  is_nullable: 1
  size: [15,5]

=head2 cic

  data_type: 'numeric'
  is_nullable: 1
  size: [15,10]

=head2 errorratio

  data_type: 'numeric'
  is_nullable: 1
  size: [15,10]

=head2 standarderror

  data_type: 'numeric'
  is_nullable: 1
  size: [15,10]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_statistics_id_seq",
  },
  "hashcode",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "whichattempts",
  { data_type => "smallint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "firstattemptscount",
  { data_type => "bigint", is_nullable => 0 },
  "highestattemptscount",
  { data_type => "bigint", is_nullable => 0 },
  "lastattemptscount",
  { data_type => "bigint", is_nullable => 0 },
  "allattemptscount",
  { data_type => "bigint", is_nullable => 0 },
  "firstattemptsavg",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "highestattemptsavg",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "lastattemptsavg",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "allattemptsavg",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "median",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "standarddeviation",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "skewness",
  { data_type => "numeric", is_nullable => 1, size => [15, 10] },
  "kurtosis",
  { data_type => "numeric", is_nullable => 1, size => [15, 5] },
  "cic",
  { data_type => "numeric", is_nullable => 1, size => [15, 10] },
  "errorratio",
  { data_type => "numeric", is_nullable => 1, size => [15, 10] },
  "standarderror",
  { data_type => "numeric", is_nullable => 1, size => [15, 10] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qAlnME4ATA54USQToOGY8g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
