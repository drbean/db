use utf8;
package DB::Schema::Result::MdlQuizAttempts;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizAttempts - Stores users attempts at quizzes.

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

=head1 TABLE: C<mdl_quiz_attempts>

=cut

__PACKAGE__->table("mdl_quiz_attempts");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_attempts_id_seq'

=head2 quiz

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 attempt

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 uniqueid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 layout

  data_type: 'text'
  is_nullable: 0

=head2 currentpage

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 preview

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 state

  data_type: 'varchar'
  default_value: 'inprogress'
  is_nullable: 0
  size: 16

=head2 timestart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timefinish

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timecheckstate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 sumgrades

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_attempts_id_seq",
  },
  "quiz",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "attempt",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "uniqueid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "layout",
  { data_type => "text", is_nullable => 0 },
  "currentpage",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "preview",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "state",
  {
    data_type => "varchar",
    default_value => "inprogress",
    is_nullable => 0,
    size => 16,
  },
  "timestart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timefinish",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timecheckstate",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "sumgrades",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_quizatte_quiuseatt_uix>

=over 4

=item * L</quiz>

=item * L</userid>

=item * L</attempt>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_quizatte_quiuseatt_uix", ["quiz", "userid", "attempt"]);

=head2 C<mdl_quizatte_uni_uix>

=over 4

=item * L</uniqueid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_quizatte_uni_uix", ["uniqueid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QG1QSa/DIfL7vDrfOc5FNw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
