use utf8;
package DB::Schema::Result::MdlUserEnrolments;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUserEnrolments

=head1 DESCRIPTION

Users participating in courses (aka enrolled users) - everybody who is participating/visible in course, that means both teachers and students

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

=head1 TABLE: C<mdl_user_enrolments>

=cut

__PACKAGE__->table("mdl_user_enrolments");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_user_enrolments_id_seq'

=head2 status

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 enrolid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 timestart

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeend

  data_type: 'bigint'
  default_value: 2147483647
  is_nullable: 0

=head2 modifierid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

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
    sequence          => "mdl_user_enrolments_id_seq",
  },
  "status",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "enrolid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "timestart",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeend",
  { data_type => "bigint", default_value => 2147483647, is_nullable => 0 },
  "modifierid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
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

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_userenro_enruse_uix>

=over 4

=item * L</enrolid>

=item * L</userid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_userenro_enruse_uix", ["enrolid", "userid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ziz+cyLeBYN3jISTE7S5XQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
