use utf8;
package DB::Schema::Result::MdlQuestionMultianswer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionMultianswer - Options for multianswer questions

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

=head1 TABLE: C<mdl_question_multianswer>

=cut

__PACKAGE__->table("mdl_question_multianswer");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_multianswer_id_seq'

=head2 question

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 sequence

  accessor: undef
  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_multianswer_id_seq",
  },
  "question",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "sequence",
  { accessor => undef, data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:y/2wunCZ62VAnwjSoOJiZQ

# man DBIx::Class::Schema::Loader::Base(3)

__PACKAGE__->add_column('+sequence' => { accessor => 'column_sequence' });


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
