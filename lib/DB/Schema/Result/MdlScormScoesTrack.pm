use utf8;
package DB::Schema::Result::MdlScormScoesTrack;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScormScoesTrack - to track SCOes

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

=head1 TABLE: C<mdl_scorm_scoes_track>

=cut

__PACKAGE__->table("mdl_scorm_scoes_track");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_scoes_track_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 scormid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 scoid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 attempt

  data_type: 'bigint'
  default_value: 1
  is_nullable: 0

=head2 element

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 value

  data_type: 'text'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_scorm_scoes_track_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "scormid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "scoid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "attempt",
  { data_type => "bigint", default_value => 1, is_nullable => 0 },
  "element",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "value",
  { data_type => "text", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_scorscoetrac_usescosco_uix>

=over 4

=item * L</userid>

=item * L</scormid>

=item * L</scoid>

=item * L</attempt>

=item * L</element>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_scorscoetrac_usescosco_uix",
  ["userid", "scormid", "scoid", "attempt", "element"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5nNNubEa0xZHue/5w7IdSg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
