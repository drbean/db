use utf8;
package DB::Schema::Result::MdlScormSeqRolluprule;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScormSeqRolluprule - SCORM2004 sequencing rule

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

=head1 TABLE: C<mdl_scorm_seq_rolluprule>

=cut

__PACKAGE__->table("mdl_scorm_seq_rolluprule");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_seq_rolluprule_id_seq'

=head2 scoid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 childactivityset

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 15

=head2 minimumcount

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 minimumpercent

  data_type: 'real'
  default_value: 0.0000
  is_nullable: 0

=head2 conditioncombination

  data_type: 'varchar'
  default_value: 'all'
  is_nullable: 0
  size: 3

=head2 action

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 15

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_scorm_seq_rolluprule_id_seq",
  },
  "scoid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "childactivityset",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 15 },
  "minimumcount",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "minimumpercent",
  { data_type => "real", default_value => "0.0000", is_nullable => 0 },
  "conditioncombination",
  { data_type => "varchar", default_value => "all", is_nullable => 0, size => 3 },
  "action",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 15 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_scorseqroll_scoid_uix>

=over 4

=item * L</scoid>

=item * L</id>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_scorseqroll_scoid_uix", ["scoid", "id"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dKyZqr7CHXnU9f0wwbIlKw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
