use utf8;
package DB::Schema::Result::MdlToolMonitorRules;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlToolMonitorRules - Table to store rules

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

=head1 TABLE: C<mdl_tool_monitor_rules>

=cut

__PACKAGE__->table("mdl_tool_monitor_rules");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tool_monitor_rules_id_seq'

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  is_nullable: 0

=head2 plugin

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 eventname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 template

  data_type: 'text'
  is_nullable: 0

=head2 templateformat

  data_type: 'smallint'
  is_nullable: 0

=head2 frequency

  data_type: 'smallint'
  is_nullable: 0

=head2 timewindow

  data_type: 'integer'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_tool_monitor_rules_id_seq",
  },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "courseid",
  { data_type => "bigint", is_nullable => 0 },
  "plugin",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "eventname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "template",
  { data_type => "text", is_nullable => 0 },
  "templateformat",
  { data_type => "smallint", is_nullable => 0 },
  "frequency",
  { data_type => "smallint", is_nullable => 0 },
  "timewindow",
  { data_type => "integer", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YOoRvGsdIe1aHIul5x3bpw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
