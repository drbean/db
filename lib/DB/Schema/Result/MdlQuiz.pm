use utf8;
package DB::Schema::Result::MdlQuiz;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuiz - The settings for each quiz.

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

=head1 TABLE: C<mdl_quiz>

=cut

__PACKAGE__->table("mdl_quiz");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 0

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timeopen

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeclose

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timelimit

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 overduehandling

  data_type: 'varchar'
  default_value: 'autoabandon'
  is_nullable: 0
  size: 16

=head2 graceperiod

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 preferredbehaviour

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 canredoquestions

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 attempts

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 attemptonlast

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 grademethod

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 decimalpoints

  data_type: 'smallint'
  default_value: 2
  is_nullable: 0

=head2 questiondecimalpoints

  data_type: 'smallint'
  default_value: -1
  is_nullable: 0

=head2 reviewattempt

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 reviewcorrectness

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 reviewmarks

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 reviewspecificfeedback

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 reviewgeneralfeedback

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 reviewrightanswer

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 reviewoverallfeedback

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 questionsperpage

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 navmethod

  data_type: 'varchar'
  default_value: 'free'
  is_nullable: 0
  size: 16

=head2 shuffleanswers

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 sumgrades

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 grade

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 password

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 subnet

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 browsersecurity

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 delay1

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 delay2

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 showuserpicture

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 showblocks

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 completionattemptsexhausted

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 completionpass

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timeopen",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeclose",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timelimit",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "overduehandling",
  {
    data_type => "varchar",
    default_value => "autoabandon",
    is_nullable => 0,
    size => 16,
  },
  "graceperiod",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "preferredbehaviour",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "canredoquestions",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "attempts",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "attemptonlast",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "grademethod",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "decimalpoints",
  { data_type => "smallint", default_value => 2, is_nullable => 0 },
  "questiondecimalpoints",
  { data_type => "smallint", default_value => -1, is_nullable => 0 },
  "reviewattempt",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "reviewcorrectness",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "reviewmarks",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "reviewspecificfeedback",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "reviewgeneralfeedback",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "reviewrightanswer",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "reviewoverallfeedback",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "questionsperpage",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "navmethod",
  {
    data_type => "varchar",
    default_value => "free",
    is_nullable => 0,
    size => 16,
  },
  "shuffleanswers",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "sumgrades",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "grade",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "password",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "subnet",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "browsersecurity",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "delay1",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "delay2",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "showuserpicture",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "showblocks",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "completionattemptsexhausted",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "completionpass",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PR5ynf0k/vqn4Hry5T+SVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
