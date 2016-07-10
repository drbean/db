use utf8;
package DB::Schema::Result::MdlFeedbackValue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlFeedbackValue - values of the completeds

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

=head1 TABLE: C<mdl_feedback_value>

=cut

__PACKAGE__->table("mdl_feedback_value");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_feedback_value_id_seq'

=head2 course_id

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 item

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 completed

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 tmp_completed

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 value

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_feedback_value_id_seq",
  },
  "course_id",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "item",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "completed",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "tmp_completed",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "value",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_feedvalu_comitecou_uix>

=over 4

=item * L</completed>

=item * L</item>

=item * L</course_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_feedvalu_comitecou_uix",
  ["completed", "item", "course_id"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BfioMD4hbbZwGxlDWU/EqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
