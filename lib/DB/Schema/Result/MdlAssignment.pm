use utf8;
package DB::Schema::Result::MdlAssignment;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignment - Defines assignments

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

=head1 TABLE: C<mdl_assignment>

=cut

__PACKAGE__->table("mdl_assignment");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assignment_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 0

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 assignmenttype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 resubmit

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 preventlate

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 emailteachers

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 var1

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 var2

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 var3

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 var4

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 var5

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 maxbytes

  data_type: 'bigint'
  default_value: 100000
  is_nullable: 0

=head2 timedue

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeavailable

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 grade

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
    sequence          => "mdl_assignment_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "assignmenttype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "resubmit",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "preventlate",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "emailteachers",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "var1",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "var2",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "var3",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "var4",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "var5",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "maxbytes",
  { data_type => "bigint", default_value => 100000, is_nullable => 0 },
  "timedue",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeavailable",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "grade",
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GmrxVwp93TBJefAGfnLMZw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
