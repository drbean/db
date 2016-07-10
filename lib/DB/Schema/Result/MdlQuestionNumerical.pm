use utf8;
package DB::Schema::Result::MdlQuestionNumerical;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionNumerical - Options for numerical questions.

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

=head1 TABLE: C<mdl_question_numerical>

=cut

__PACKAGE__->table("mdl_question_numerical");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_numerical_id_seq'

=head2 question

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 answer

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 tolerance

  data_type: 'varchar'
  default_value: 0.0
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_numerical_id_seq",
  },
  "question",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "answer",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "tolerance",
  {
    data_type => "varchar",
    default_value => "0.0",
    is_nullable => 0,
    size => 255,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9rTZd9f+t0E1fNa5Vpkp4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
