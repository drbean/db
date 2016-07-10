use utf8;
package DB::Schema::Result::MdlEventsHandlers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEventsHandlers

=head1 DESCRIPTION

This table is for storing which components requests what type of event, and the location of the responsible handlers. For example, the assignment registers 'grade_updated' event with a function assignment_grade_handler() that should be called event t

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

=head1 TABLE: C<mdl_events_handlers>

=cut

__PACKAGE__->table("mdl_events_handlers");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_events_handlers_id_seq'

=head2 eventname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 166

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 166

=head2 handlerfile

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 handlerfunction

  data_type: 'text'
  is_nullable: 1

=head2 schedule

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 status

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 internal

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_events_handlers_id_seq",
  },
  "eventname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 166 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 166 },
  "handlerfile",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "handlerfunction",
  { data_type => "text", is_nullable => 1 },
  "schedule",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "status",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "internal",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_evenhand_evecom_uix>

=over 4

=item * L</eventname>

=item * L</component>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_evenhand_evecom_uix", ["eventname", "component"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:89R2H1Put4HvwTqn4ox+vw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
