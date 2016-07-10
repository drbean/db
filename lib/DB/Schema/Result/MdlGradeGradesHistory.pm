use utf8;
package DB::Schema::Result::MdlGradeGradesHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeGradesHistory - History table

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

=head1 TABLE: C<mdl_grade_grades_history>

=cut

__PACKAGE__->table("mdl_grade_grades_history");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_grades_history_id_seq'

=head2 action

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 oldid

  data_type: 'bigint'
  is_nullable: 0

=head2 source

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

=head2 loggeduser

  data_type: 'bigint'
  is_nullable: 1

=head2 itemid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 rawgrade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 rawgrademax

  data_type: 'numeric'
  default_value: 100
  is_nullable: 0
  size: [10,5]

=head2 rawgrademin

  data_type: 'numeric'
  default_value: 0
  is_nullable: 0
  size: [10,5]

=head2 rawscaleid

  data_type: 'bigint'
  is_nullable: 1

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 1

=head2 finalgrade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 hidden

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 locked

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 locktime

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 exported

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 overridden

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 excluded

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 feedback

  data_type: 'text'
  is_nullable: 1

=head2 feedbackformat

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 information

  data_type: 'text'
  is_nullable: 1

=head2 informationformat

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_grade_grades_history_id_seq",
  },
  "action",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "oldid",
  { data_type => "bigint", is_nullable => 0 },
  "source",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
  "loggeduser",
  { data_type => "bigint", is_nullable => 1 },
  "itemid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "rawgrade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "rawgrademax",
  {
    data_type => "numeric",
    default_value => 100,
    is_nullable => 0,
    size => [10, 5],
  },
  "rawgrademin",
  {
    data_type => "numeric",
    default_value => 0,
    is_nullable => 0,
    size => [10, 5],
  },
  "rawscaleid",
  { data_type => "bigint", is_nullable => 1 },
  "usermodified",
  { data_type => "bigint", is_nullable => 1 },
  "finalgrade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "hidden",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "locked",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "locktime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "exported",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "overridden",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "excluded",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "feedback",
  { data_type => "text", is_nullable => 1 },
  "feedbackformat",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "information",
  { data_type => "text", is_nullable => 1 },
  "informationformat",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YydBBmv2f+q+hYDR8Tpuzg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
