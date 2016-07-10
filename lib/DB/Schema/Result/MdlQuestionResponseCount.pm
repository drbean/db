use utf8;
package DB::Schema::Result::MdlQuestionResponseCount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionResponseCount - Count for each responses for each try at a question.

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

=head1 TABLE: C<mdl_question_response_count>

=cut

__PACKAGE__->table("mdl_question_response_count");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_response_count_id_seq'

=head2 analysisid

  data_type: 'bigint'
  is_nullable: 0

=head2 try

  data_type: 'bigint'
  is_nullable: 0

=head2 rcount

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_response_count_id_seq",
  },
  "analysisid",
  { data_type => "bigint", is_nullable => 0 },
  "try",
  { data_type => "bigint", is_nullable => 0 },
  "rcount",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LdoCRFWFhqZPTh8WDIoRcA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
