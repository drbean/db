use utf8;
package DB::Schema::Result::MdlScormSeqMapinfo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScormSeqMapinfo - SCORM2004 objective mapinfo description

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

=head1 TABLE: C<mdl_scorm_seq_mapinfo>

=cut

__PACKAGE__->table("mdl_scorm_seq_mapinfo");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_seq_mapinfo_id_seq'

=head2 scoid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 objectiveid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 targetobjectiveid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 readsatisfiedstatus

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 readnormalizedmeasure

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 writesatisfiedstatus

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 writenormalizedmeasure

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
    sequence          => "mdl_scorm_seq_mapinfo_id_seq",
  },
  "scoid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "objectiveid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "targetobjectiveid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "readsatisfiedstatus",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "readnormalizedmeasure",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "writesatisfiedstatus",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "writenormalizedmeasure",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_scorseqmapi_scoidobj_uix>

=over 4

=item * L</scoid>

=item * L</id>

=item * L</objectiveid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_scorseqmapi_scoidobj_uix",
  ["scoid", "id", "objectiveid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8OAE/hBDzAR/B8CjhXy+Dw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
