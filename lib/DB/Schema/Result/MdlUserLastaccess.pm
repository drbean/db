use utf8;
package DB::Schema::Result::MdlUserLastaccess;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUserLastaccess

=head1 DESCRIPTION

To keep track of course page access times, used in online participants block, and participants list

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

=head1 TABLE: C<mdl_user_lastaccess>

=cut

__PACKAGE__->table("mdl_user_lastaccess");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_user_lastaccess_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeaccess

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
    sequence          => "mdl_user_lastaccess_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeaccess",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_userlast_usecou_uix>

=over 4

=item * L</userid>

=item * L</courseid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_userlast_usecou_uix", ["userid", "courseid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GIHnjAuvxY87MOPcWuTJsg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
