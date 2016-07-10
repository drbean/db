use utf8;
package DB::Schema::Result::MdlWorkshopSubmissionsOld;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlWorkshopSubmissionsOld

=head1 DESCRIPTION

Legacy workshop_submissions table to be dropped later in Moodle 2.x

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

=head1 TABLE: C<mdl_workshop_submissions_old>

=cut

__PACKAGE__->table("mdl_workshop_submissions_old");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_workshop_submissions_old_id_seq'

=head2 workshopid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 mailed

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 gradinggrade

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 finalgrade

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 late

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 nassessments

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 newplugin

  data_type: 'varchar'
  is_nullable: 1
  size: 28

=head2 newid

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_workshop_submissions_old_id_seq",
  },
  "workshopid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "mailed",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "gradinggrade",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "finalgrade",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "late",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "nassessments",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "newplugin",
  { data_type => "varchar", is_nullable => 1, size => 28 },
  "newid",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:V2+mmRkDoj+GII3YuEC6ZA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
