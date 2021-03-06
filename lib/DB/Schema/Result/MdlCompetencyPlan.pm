use utf8;
package DB::Schema::Result::MdlCompetencyPlan;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCompetencyPlan - Learning plans

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

=head1 TABLE: C<mdl_competency_plan>

=cut

__PACKAGE__->table("mdl_competency_plan");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_competency_plan_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 templateid

  data_type: 'bigint'
  is_nullable: 1

=head2 origtemplateid

  data_type: 'bigint'
  is_nullable: 1

=head2 status

  data_type: 'smallint'
  is_nullable: 0

=head2 duedate

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 reviewerid

  data_type: 'bigint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_competency_plan_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "templateid",
  { data_type => "bigint", is_nullable => 1 },
  "origtemplateid",
  { data_type => "bigint", is_nullable => 1 },
  "status",
  { data_type => "smallint", is_nullable => 0 },
  "duedate",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "reviewerid",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "usermodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FLWnK0PvniwDjs0m7oSLnw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
