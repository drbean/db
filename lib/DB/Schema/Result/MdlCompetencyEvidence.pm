use utf8;
package DB::Schema::Result::MdlCompetencyEvidence;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCompetencyEvidence - The evidence linked to a user competency

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

=head1 TABLE: C<mdl_competency_evidence>

=cut

__PACKAGE__->table("mdl_competency_evidence");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_competency_evidence_id_seq'

=head2 usercompetencyid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 action

  data_type: 'smallint'
  is_nullable: 0

=head2 actionuserid

  data_type: 'bigint'
  is_nullable: 1

=head2 descidentifier

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 desccomponent

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 desca

  data_type: 'text'
  is_nullable: 1

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 grade

  data_type: 'bigint'
  is_nullable: 1

=head2 note

  data_type: 'text'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
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
    sequence          => "mdl_competency_evidence_id_seq",
  },
  "usercompetencyid",
  { data_type => "bigint", is_nullable => 0 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "action",
  { data_type => "smallint", is_nullable => 0 },
  "actionuserid",
  { data_type => "bigint", is_nullable => 1 },
  "descidentifier",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "desccomponent",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "desca",
  { data_type => "text", is_nullable => 1 },
  "url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "grade",
  { data_type => "bigint", is_nullable => 1 },
  "note",
  { data_type => "text", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cpJSPuLHDR+a1GY2tGzwBg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
