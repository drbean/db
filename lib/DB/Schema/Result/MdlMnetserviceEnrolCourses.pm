use utf8;
package DB::Schema::Result::MdlMnetserviceEnrolCourses;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetserviceEnrolCourses

=head1 DESCRIPTION

Caches the information fetched via XML-RPC about courses on remote hosts that are offered for our users

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

=head1 TABLE: C<mdl_mnetservice_enrol_courses>

=cut

__PACKAGE__->table("mdl_mnetservice_enrol_courses");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnetservice_enrol_courses_id_seq'

=head2 hostid

  data_type: 'bigint'
  is_nullable: 0

=head2 remoteid

  data_type: 'bigint'
  is_nullable: 0

=head2 categoryid

  data_type: 'bigint'
  is_nullable: 0

=head2 categoryname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 sortorder

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 fullname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 254

=head2 shortname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 idnumber

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 summary

  data_type: 'text'
  is_nullable: 0

=head2 summaryformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 startdate

  data_type: 'bigint'
  is_nullable: 0

=head2 roleid

  data_type: 'bigint'
  is_nullable: 0

=head2 rolename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_mnetservice_enrol_courses_id_seq",
  },
  "hostid",
  { data_type => "bigint", is_nullable => 0 },
  "remoteid",
  { data_type => "bigint", is_nullable => 0 },
  "categoryid",
  { data_type => "bigint", is_nullable => 0 },
  "categoryname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "fullname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 254 },
  "shortname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "idnumber",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "summary",
  { data_type => "text", is_nullable => 0 },
  "summaryformat",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "startdate",
  { data_type => "bigint", is_nullable => 0 },
  "roleid",
  { data_type => "bigint", is_nullable => 0 },
  "rolename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_mnetenrocour_hosrem_uix>

=over 4

=item * L</hostid>

=item * L</remoteid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_mnetenrocour_hosrem_uix", ["hostid", "remoteid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:R6hCNRD0yrbDfjLwTvMyWw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
