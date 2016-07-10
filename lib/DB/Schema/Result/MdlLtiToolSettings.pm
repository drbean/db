use utf8;
package DB::Schema::Result::MdlLtiToolSettings;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLtiToolSettings - LTI tool setting values

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

=head1 TABLE: C<mdl_lti_tool_settings>

=cut

__PACKAGE__->table("mdl_lti_tool_settings");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lti_tool_settings_id_seq'

=head2 toolproxyid

  data_type: 'bigint'
  is_nullable: 0

=head2 course

  data_type: 'bigint'
  is_nullable: 1

=head2 coursemoduleid

  data_type: 'bigint'
  is_nullable: 1

=head2 settings

  data_type: 'text'
  is_nullable: 0

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
    sequence          => "mdl_lti_tool_settings_id_seq",
  },
  "toolproxyid",
  { data_type => "bigint", is_nullable => 0 },
  "course",
  { data_type => "bigint", is_nullable => 1 },
  "coursemoduleid",
  { data_type => "bigint", is_nullable => 1 },
  "settings",
  { data_type => "text", is_nullable => 0 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TZXL1yCMI8ATjcuPfS1hXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
