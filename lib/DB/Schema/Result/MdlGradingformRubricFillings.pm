use utf8;
package DB::Schema::Result::MdlGradingformRubricFillings;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradingformRubricFillings

=head1 DESCRIPTION

Stores the data of how the rubric is filled by a particular rater

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

=head1 TABLE: C<mdl_gradingform_rubric_fillings>

=cut

__PACKAGE__->table("mdl_gradingform_rubric_fillings");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_gradingform_rubric_fillings_id_seq'

=head2 instanceid

  data_type: 'bigint'
  is_nullable: 0

=head2 criterionid

  data_type: 'bigint'
  is_nullable: 0

=head2 levelid

  data_type: 'bigint'
  is_nullable: 1

=head2 remark

  data_type: 'text'
  is_nullable: 1

=head2 remarkformat

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_gradingform_rubric_fillings_id_seq",
  },
  "instanceid",
  { data_type => "bigint", is_nullable => 0 },
  "criterionid",
  { data_type => "bigint", is_nullable => 0 },
  "levelid",
  { data_type => "bigint", is_nullable => 1 },
  "remark",
  { data_type => "text", is_nullable => 1 },
  "remarkformat",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_gradrubrfill_inscri_uix>

=over 4

=item * L</instanceid>

=item * L</criterionid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_gradrubrfill_inscri_uix", ["instanceid", "criterionid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/xSyhuFxa8l+jX+HNoqxLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
