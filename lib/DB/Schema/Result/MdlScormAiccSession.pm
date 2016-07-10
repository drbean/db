use utf8;
package DB::Schema::Result::MdlScormAiccSession;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScormAiccSession - Used by AICC HACP to store session information

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

=head1 TABLE: C<mdl_scorm_aicc_session>

=cut

__PACKAGE__->table("mdl_scorm_aicc_session");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_aicc_session_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 scormid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 hacpsession

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 scoid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 scormmode

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 scormstatus

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 attempt

  data_type: 'bigint'
  is_nullable: 1

=head2 lessonstatus

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sessiontime

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
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
    sequence          => "mdl_scorm_aicc_session_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "scormid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "hacpsession",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "scoid",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "scormmode",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "scormstatus",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "attempt",
  { data_type => "bigint", is_nullable => 1 },
  "lessonstatus",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "sessiontime",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:32000C8BIIJzhgGCQ2lTew


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
