use utf8;
package DB::Schema::Result::MdlUser;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUser - One record for each person

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

=head1 TABLE: C<mdl_user>

=cut

__PACKAGE__->table("mdl_user");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_user_id_seq'

=head2 auth

  data_type: 'varchar'
  default_value: 'manual'
  is_nullable: 0
  size: 20

=head2 confirmed

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 policyagreed

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 deleted

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 suspended

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 mnethostid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 username

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 password

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 idnumber

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 firstname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 lastname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 emailstop

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 icq

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 15

=head2 skype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 yahoo

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 aim

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 msn

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 phone1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 phone2

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 institution

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 department

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 address

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 city

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 120

=head2 country

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 2

=head2 lang

  data_type: 'varchar'
  default_value: 'en'
  is_nullable: 0
  size: 30

=head2 calendartype

  data_type: 'varchar'
  default_value: 'gregorian'
  is_nullable: 0
  size: 30

=head2 theme

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 timezone

  data_type: 'varchar'
  default_value: 99
  is_nullable: 0
  size: 100

=head2 firstaccess

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastaccess

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastlogin

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 currentlogin

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 lastip

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 secret

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 15

=head2 picture

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 mailformat

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 maildigest

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 maildisplay

  data_type: 'smallint'
  default_value: 2
  is_nullable: 0

=head2 autosubscribe

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 trackforums

  data_type: 'smallint'
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

=head2 trustbitmask

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 imagealt

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 lastnamephonetic

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 firstnamephonetic

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 middlename

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 alternatename

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_user_id_seq",
  },
  "auth",
  {
    data_type => "varchar",
    default_value => "manual",
    is_nullable => 0,
    size => 20,
  },
  "confirmed",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "policyagreed",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "deleted",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "suspended",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "mnethostid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "username",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "password",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "idnumber",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "firstname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "lastname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "email",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "emailstop",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "icq",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 15 },
  "skype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "yahoo",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "aim",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "msn",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "phone1",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "phone2",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "institution",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "department",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "address",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "city",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 120 },
  "country",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 2 },
  "lang",
  { data_type => "varchar", default_value => "en", is_nullable => 0, size => 30 },
  "calendartype",
  {
    data_type => "varchar",
    default_value => "gregorian",
    is_nullable => 0,
    size => 30,
  },
  "theme",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "timezone",
  { data_type => "varchar", default_value => 99, is_nullable => 0, size => 100 },
  "firstaccess",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastaccess",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastlogin",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "currentlogin",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "lastip",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "secret",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 15 },
  "picture",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "mailformat",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "maildigest",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "maildisplay",
  { data_type => "smallint", default_value => 2, is_nullable => 0 },
  "autosubscribe",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "trackforums",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "trustbitmask",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "imagealt",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "lastnamephonetic",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "firstnamephonetic",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "middlename",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "alternatename",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_user_mneuse_uix>

=over 4

=item * L</mnethostid>

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_user_mneuse_uix", ["mnethostid", "username"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:frQiEV9KtDvkr0trDLpw8Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
