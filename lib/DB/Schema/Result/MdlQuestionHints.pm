use utf8;
package DB::Schema::Result::MdlQuestionHints;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionHints

=head1 DESCRIPTION

Stores the the part of the question definition that gives different feedback after each try in interactive and similar behaviours.

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

=head1 TABLE: C<mdl_question_hints>

=cut

__PACKAGE__->table("mdl_question_hints");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_hints_id_seq'

=head2 questionid

  data_type: 'bigint'
  is_nullable: 0

=head2 hint

  data_type: 'text'
  is_nullable: 0

=head2 hintformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 shownumcorrect

  data_type: 'smallint'
  is_nullable: 1

=head2 clearwrong

  data_type: 'smallint'
  is_nullable: 1

=head2 options

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_hints_id_seq",
  },
  "questionid",
  { data_type => "bigint", is_nullable => 0 },
  "hint",
  { data_type => "text", is_nullable => 0 },
  "hintformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "shownumcorrect",
  { data_type => "smallint", is_nullable => 1 },
  "clearwrong",
  { data_type => "smallint", is_nullable => 1 },
  "options",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KyV+RxGPSIa30I48Bxjktg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
