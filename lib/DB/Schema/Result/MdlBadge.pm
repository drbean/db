use utf8;
package DB::Schema::Result::MdlBadge;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBadge - Defines badge

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

=head1 TABLE: C<mdl_badge>

=cut

__PACKAGE__->table("mdl_badge");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_badge_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 usercreated

  data_type: 'bigint'
  is_nullable: 0

=head2 usermodified

  data_type: 'bigint'
  is_nullable: 0

=head2 issuername

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 issuerurl

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 issuercontact

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 expiredate

  data_type: 'bigint'
  is_nullable: 1

=head2 expireperiod

  data_type: 'bigint'
  is_nullable: 1

=head2 type

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 courseid

  data_type: 'bigint'
  is_nullable: 1

=head2 message

  data_type: 'text'
  is_nullable: 0

=head2 messagesubject

  data_type: 'text'
  is_nullable: 0

=head2 attachment

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 notification

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 status

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 nextcron

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_badge_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "usercreated",
  { data_type => "bigint", is_nullable => 0 },
  "usermodified",
  { data_type => "bigint", is_nullable => 0 },
  "issuername",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "issuerurl",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "issuercontact",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "expiredate",
  { data_type => "bigint", is_nullable => 1 },
  "expireperiod",
  { data_type => "bigint", is_nullable => 1 },
  "type",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "courseid",
  { data_type => "bigint", is_nullable => 1 },
  "message",
  { data_type => "text", is_nullable => 0 },
  "messagesubject",
  { data_type => "text", is_nullable => 0 },
  "attachment",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "notification",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "status",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "nextcron",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1FvHv6tEhGqLws2NM3Kv1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
