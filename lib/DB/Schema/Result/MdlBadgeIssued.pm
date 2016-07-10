use utf8;
package DB::Schema::Result::MdlBadgeIssued;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBadgeIssued - Defines issued badges

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

=head1 TABLE: C<mdl_badge_issued>

=cut

__PACKAGE__->table("mdl_badge_issued");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_badge_issued_id_seq'

=head2 badgeid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 uniquehash

  data_type: 'text'
  is_nullable: 0

=head2 dateissued

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 dateexpire

  data_type: 'bigint'
  is_nullable: 1

=head2 visible

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 issuernotified

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_badge_issued_id_seq",
  },
  "badgeid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "uniquehash",
  { data_type => "text", is_nullable => 0 },
  "dateissued",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "dateexpire",
  { data_type => "bigint", is_nullable => 1 },
  "visible",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "issuernotified",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_badgissu_baduse_uix>

=over 4

=item * L</badgeid>

=item * L</userid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_badgissu_baduse_uix", ["badgeid", "userid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hj1GrQH4QFJQnud//UPNXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
