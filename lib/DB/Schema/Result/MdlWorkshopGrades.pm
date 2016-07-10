use utf8;
package DB::Schema::Result::MdlWorkshopGrades;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopGrades

=head1 DESCRIPTION

How the reviewers filled-up the grading forms, given grades and comments

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

=head1 TABLE: C<mdl_workshop_grades>

=cut

__PACKAGE__->table("mdl_workshop_grades");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshop_grades_id_seq'

=head2 assessmentid

  data_type: 'bigint'
  is_nullable: 0

=head2 strategy

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 dimensionid

  data_type: 'bigint'
  is_nullable: 0

=head2 grade

  data_type: 'numeric'
  is_nullable: 0
  size: [10,5]

=head2 peercomment

  data_type: 'text'
  is_nullable: 1

=head2 peercommentformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshop_grades_id_seq",
  },
  "assessmentid",
  { data_type => "bigint", is_nullable => 0 },
  "strategy",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "dimensionid",
  { data_type => "bigint", is_nullable => 0 },
  "grade",
  { data_type => "numeric", is_nullable => 0, size => [10, 5] },
  "peercomment",
  { data_type => "text", is_nullable => 1 },
  "peercommentformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_workgrad_assstrdim_uix>

=over 4

=item * L</assessmentid>

=item * L</strategy>

=item * L</dimensionid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_workgrad_assstrdim_uix",
  ["assessmentid", "strategy", "dimensionid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rblAgmPJc7M3CvNt3nhFLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
