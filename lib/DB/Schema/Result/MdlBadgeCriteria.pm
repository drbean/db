use utf8;
package DB::Schema::Result::MdlBadgeCriteria;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBadgeCriteria - Defines criteria for issuing badges

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

=head1 TABLE: C<mdl_badge_criteria>

=cut

__PACKAGE__->table("mdl_badge_criteria");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_badge_criteria_id_seq'

=head2 badgeid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 criteriatype

  data_type: 'bigint'
  is_nullable: 1

=head2 method

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_badge_criteria_id_seq",
  },
  "badgeid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "criteriatype",
  { data_type => "bigint", is_nullable => 1 },
  "method",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_badgcrit_badcri_uix>

=over 4

=item * L</badgeid>

=item * L</criteriatype>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_badgcrit_badcri_uix", ["badgeid", "criteriatype"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KW+0KHofKK+x2e4ERqlvYA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
