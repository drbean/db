use utf8;
package DB::Schema::Result::MdlSessions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlSessions - Database based session storage - now recommended

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

=head1 TABLE: C<mdl_sessions>

=cut

__PACKAGE__->table("mdl_sessions");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_sessions_id_seq'

=head2 state

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 sid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 sessdata

  data_type: 'text'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 firstip

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 lastip

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_sessions_id_seq",
  },
  "state",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "sid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "sessdata",
  { data_type => "text", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "firstip",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "lastip",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_sess_sid_uix>

=over 4

=item * L</sid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_sess_sid_uix", ["sid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D6EGrzreL7PrY1PbR7eVtQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
