use utf8;
package DB::Schema::Result::MdlCourseCompletionAggrMethd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseCompletionAggrMethd - Course completion aggregation methods for criteria

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

=head1 TABLE: C<mdl_course_completion_aggr_methd>

=cut

__PACKAGE__->table("mdl_course_completion_aggr_methd");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_completion_aggr_methd_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 criteriatype

  data_type: 'bigint'
  is_nullable: 1

=head2 method

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 value

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_course_completion_aggr_methd_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "criteriatype",
  { data_type => "bigint", is_nullable => 1 },
  "method",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "value",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_courcompaggrmeth_coucr_uix>

=over 4

=item * L</course>

=item * L</criteriatype>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_courcompaggrmeth_coucr_uix", ["course", "criteriatype"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IqfNAwfHfEbWEURxz+BYGg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
