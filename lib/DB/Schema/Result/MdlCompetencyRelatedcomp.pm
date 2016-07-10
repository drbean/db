use utf8;
package DB::Schema::Result::MdlCompetencyRelatedcomp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCompetencyRelatedcomp - Related competencies

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

=head1 TABLE: C<mdl_competency_relatedcomp>

=cut

__PACKAGE__->table("mdl_competency_relatedcomp");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_competency_relatedcomp_id_seq'

=head2 competencyid

  data_type: 'bigint'
  is_nullable: 0

=head2 relatedcompetencyid

  data_type: 'bigint'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

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
    sequence          => "mdl_competency_relatedcomp_id_seq",
  },
  "competencyid",
  { data_type => "bigint", is_nullable => 0 },
  "relatedcompetencyid",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NixomVuovy+9QMloogYizQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
