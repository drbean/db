use utf8;
package DB::Schema::Result::MdlEnrolLtiTools;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEnrolLtiTools - List of tools provided to the remote system

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

=head1 TABLE: C<mdl_enrol_lti_tools>

=cut

__PACKAGE__->table("mdl_enrol_lti_tools");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_enrol_lti_tools_id_seq'

=head2 enrolid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 institution

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 lang

  data_type: 'varchar'
  default_value: 'en'
  is_nullable: 0
  size: 30

=head2 timezone

  data_type: 'varchar'
  default_value: 99
  is_nullable: 0
  size: 100

=head2 maxenrolled

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 maildisplay

  data_type: 'smallint'
  default_value: 2
  is_nullable: 0

=head2 city

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 120

=head2 country

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 2

=head2 gradesync

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 gradesynccompletion

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 membersync

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 membersyncmode

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 roleinstructor

  data_type: 'bigint'
  is_nullable: 0

=head2 rolelearner

  data_type: 'bigint'
  is_nullable: 0

=head2 secret

  data_type: 'text'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_enrol_lti_tools_id_seq",
  },
  "enrolid",
  { data_type => "bigint", is_nullable => 0 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "institution",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "lang",
  { data_type => "varchar", default_value => "en", is_nullable => 0, size => 30 },
  "timezone",
  { data_type => "varchar", default_value => 99, is_nullable => 0, size => 100 },
  "maxenrolled",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "maildisplay",
  { data_type => "smallint", default_value => 2, is_nullable => 0 },
  "city",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 120 },
  "country",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 2 },
  "gradesync",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "gradesynccompletion",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "membersync",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "membersyncmode",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "roleinstructor",
  { data_type => "bigint", is_nullable => 0 },
  "rolelearner",
  { data_type => "bigint", is_nullable => 0 },
  "secret",
  { data_type => "text", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Dl/22eLXQ2TW0/zKZovooA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
