use utf8;
package DB::Schema::Result::MdlMnetSession;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlMnetSession - Store session data from users migrating to other sites

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

=head1 TABLE: C<mdl_mnet_session>

=cut

__PACKAGE__->table("mdl_mnet_session");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_mnet_session_id_seq'

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 username

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 token

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 mnethostid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 useragent

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 confirm_timeout

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 session_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 expires

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
    sequence          => "mdl_mnet_session_id_seq",
  },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "username",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "token",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "mnethostid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "useragent",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "confirm_timeout",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "session_id",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "expires",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_mnetsess_tok_uix>

=over 4

=item * L</token>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_mnetsess_tok_uix", ["token"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:b8Rh47lbGXeoLoN8x/nsNg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
