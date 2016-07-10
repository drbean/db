use utf8;
package DB::Schema::Result::MdlLti;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLti - This table contains Basic LTI activities instances

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

=head1 TABLE: C<mdl_lti>

=cut

__PACKAGE__->table("mdl_lti");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lti_id_seq'

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
  is_nullable: 1

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 typeid

  data_type: 'bigint'
  is_nullable: 1

=head2 toolurl

  data_type: 'text'
  is_nullable: 0

=head2 securetoolurl

  data_type: 'text'
  is_nullable: 1

=head2 instructorchoicesendname

  data_type: 'smallint'
  is_nullable: 1

=head2 instructorchoicesendemailaddr

  data_type: 'smallint'
  is_nullable: 1

=head2 instructorchoiceallowroster

  data_type: 'smallint'
  is_nullable: 1

=head2 instructorchoiceallowsetting

  data_type: 'smallint'
  is_nullable: 1

=head2 instructorcustomparameters

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 instructorchoiceacceptgrades

  data_type: 'smallint'
  is_nullable: 1

=head2 grade

  data_type: 'bigint'
  default_value: 100
  is_nullable: 0

=head2 launchcontainer

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 resourcekey

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 debuglaunch

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 showtitlelaunch

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 showdescriptionlaunch

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 servicesalt

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 icon

  data_type: 'text'
  is_nullable: 1

=head2 secureicon

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_lti_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 1 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "typeid",
  { data_type => "bigint", is_nullable => 1 },
  "toolurl",
  { data_type => "text", is_nullable => 0 },
  "securetoolurl",
  { data_type => "text", is_nullable => 1 },
  "instructorchoicesendname",
  { data_type => "smallint", is_nullable => 1 },
  "instructorchoicesendemailaddr",
  { data_type => "smallint", is_nullable => 1 },
  "instructorchoiceallowroster",
  { data_type => "smallint", is_nullable => 1 },
  "instructorchoiceallowsetting",
  { data_type => "smallint", is_nullable => 1 },
  "instructorcustomparameters",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "instructorchoiceacceptgrades",
  { data_type => "smallint", is_nullable => 1 },
  "grade",
  { data_type => "bigint", default_value => 100, is_nullable => 0 },
  "launchcontainer",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "resourcekey",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "debuglaunch",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "showtitlelaunch",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "showdescriptionlaunch",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "servicesalt",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "icon",
  { data_type => "text", is_nullable => 1 },
  "secureicon",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pVgjLYJ/IbNlC+ch2yQv4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
