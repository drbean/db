use utf8;
package DB::Schema::Result::MdlChoice;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlChoice - Available choices are stored here

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

=head1 TABLE: C<mdl_choice>

=cut

__PACKAGE__->table("mdl_choice");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_choice_id_seq'

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 intro

  data_type: 'text'
  is_nullable: 0

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 publish

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 showresults

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 display

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 allowupdate

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 allowmultiple

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 showunanswered

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 includeinactive

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 limitanswers

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timeopen

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timeclose

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 showpreview

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 completionsubmit

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_choice_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "publish",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "showresults",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "display",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "allowupdate",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "allowmultiple",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "showunanswered",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "includeinactive",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "limitanswers",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timeopen",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeclose",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "showpreview",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "completionsubmit",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k0UhhR2viu+TVarwebD0xQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
