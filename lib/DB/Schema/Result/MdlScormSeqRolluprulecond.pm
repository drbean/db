use utf8;
package DB::Schema::Result::MdlScormSeqRolluprulecond;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScormSeqRolluprulecond - SCORM2004 sequencing rule

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

=head1 TABLE: C<mdl_scorm_seq_rolluprulecond>

=cut

__PACKAGE__->table("mdl_scorm_seq_rolluprulecond");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_seq_rolluprulecond_id_seq'

=head2 scoid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 rollupruleid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 operator

  data_type: 'varchar'
  default_value: 'noOp'
  is_nullable: 0
  size: 5

=head2 cond

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 25

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_scorm_seq_rolluprulecond_id_seq",
  },
  "scoid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "rollupruleid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "operator",
  {
    data_type => "varchar",
    default_value => "noOp",
    is_nullable => 0,
    size => 5,
  },
  "cond",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 25 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_scorseqroll_scorolid_uix>

=over 4

=item * L</scoid>

=item * L</rollupruleid>

=item * L</id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_scorseqroll_scorolid_uix",
  ["scoid", "rollupruleid", "id"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XU90eIl8VRwrQjDkCfINjA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
