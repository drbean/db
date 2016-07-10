use utf8;
package DB::Schema::Result::MdlQuestionNumericalOptions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuestionNumericalOptions

=head1 DESCRIPTION

Options for questions of type numerical This table is also used by the calculated question type

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

=head1 TABLE: C<mdl_question_numerical_options>

=cut

__PACKAGE__->table("mdl_question_numerical_options");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_question_numerical_options_id_seq'

=head2 question

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 showunits

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 unitsleft

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 unitgradingtype

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 unitpenalty

  data_type: 'numeric'
  default_value: 0.1
  is_nullable: 0
  size: [12,7]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_question_numerical_options_id_seq",
  },
  "question",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "showunits",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "unitsleft",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "unitgradingtype",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "unitpenalty",
  {
    data_type => "numeric",
    default_value => 0.1,
    is_nullable => 0,
    size => [12, 7],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q6jBw/DYs+pztZDDu3EEsQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
