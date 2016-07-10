use utf8;
package DB::Schema::Result::MdlEnrolLtiUsers;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEnrolLtiUsers - User access log and gradeback data

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

=head1 TABLE: C<mdl_enrol_lti_users>

=cut

__PACKAGE__->table("mdl_enrol_lti_users");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_enrol_lti_users_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 toolid

  data_type: 'bigint'
  is_nullable: 0

=head2 serviceurl

  data_type: 'text'
  is_nullable: 1

=head2 sourceid

  data_type: 'text'
  is_nullable: 1

=head2 consumerkey

  data_type: 'text'
  is_nullable: 1

=head2 consumersecret

  data_type: 'text'
  is_nullable: 1

=head2 membershipsurl

  data_type: 'text'
  is_nullable: 1

=head2 membershipsid

  data_type: 'text'
  is_nullable: 1

=head2 lastgrade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 lastaccess

  data_type: 'bigint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_enrol_lti_users_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "toolid",
  { data_type => "bigint", is_nullable => 0 },
  "serviceurl",
  { data_type => "text", is_nullable => 1 },
  "sourceid",
  { data_type => "text", is_nullable => 1 },
  "consumerkey",
  { data_type => "text", is_nullable => 1 },
  "consumersecret",
  { data_type => "text", is_nullable => 1 },
  "membershipsurl",
  { data_type => "text", is_nullable => 1 },
  "membershipsid",
  { data_type => "text", is_nullable => 1 },
  "lastgrade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "lastaccess",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6B7zNB9G8GCtg0BZcyLwxA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
