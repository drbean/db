use utf8;
package DB::Schema::Result::MdlMnetserviceEnrolEnrolments;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetserviceEnrolEnrolments

=head1 DESCRIPTION

Caches the information about enrolments of our local users in courses on remote hosts

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

=head1 TABLE: C<mdl_mnetservice_enrol_enrolments>

=cut

__PACKAGE__->table("mdl_mnetservice_enrol_enrolments");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnetservice_enrol_enrolments_id_seq'

=head2 hostid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 remotecourseid

  data_type: 'bigint'
  is_nullable: 0

=head2 rolename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 enroltime

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 enroltype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_mnetservice_enrol_enrolments_id_seq",
  },
  "hostid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "remotecourseid",
  { data_type => "bigint", is_nullable => 0 },
  "rolename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "enroltime",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "enroltype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:x0bVkaRT7+TxDiHvveznlQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
