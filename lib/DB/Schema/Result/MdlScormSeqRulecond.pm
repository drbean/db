use utf8;
package DB::Schema::Result::MdlScormSeqRulecond;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScormSeqRulecond - SCORM2004 rule condition

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

=head1 TABLE: C<mdl_scorm_seq_rulecond>

=cut

__PACKAGE__->table("mdl_scorm_seq_rulecond");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_seq_rulecond_id_seq'

=head2 scoid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 ruleconditionsid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 refrencedobjective

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 measurethreshold

  data_type: 'real'
  default_value: 0.0000
  is_nullable: 0

=head2 operator

  data_type: 'varchar'
  default_value: 'noOp'
  is_nullable: 0
  size: 5

=head2 cond

  data_type: 'varchar'
  default_value: 'always'
  is_nullable: 0
  size: 30

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_scorm_seq_rulecond_id_seq",
  },
  "scoid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "ruleconditionsid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "refrencedobjective",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "measurethreshold",
  { data_type => "real", default_value => "0.0000", is_nullable => 0 },
  "operator",
  {
    data_type => "varchar",
    default_value => "noOp",
    is_nullable => 0,
    size => 5,
  },
  "cond",
  {
    data_type => "varchar",
    default_value => "always",
    is_nullable => 0,
    size => 30,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_scorseqrule_idscorul_uix>

=over 4

=item * L</id>

=item * L</scoid>

=item * L</ruleconditionsid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_scorseqrule_idscorul_uix",
  ["id", "scoid", "ruleconditionsid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qPIqKxhCgYYi/h6Kf629fw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
