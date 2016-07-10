use utf8;
package DB::Schema::Result::MdlLesson;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLesson - Defines lesson

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

=head1 TABLE: C<mdl_lesson>

=cut

__PACKAGE__->table("mdl_lesson");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lesson_id_seq'

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
  is_nullable: 1

=head2 introformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 practice

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 modattempts

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 usepassword

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 password

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 dependency

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 conditions

  data_type: 'text'
  is_nullable: 0

=head2 grade

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 custom

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 ongoing

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 usemaxgrade

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 maxanswers

  data_type: 'smallint'
  default_value: 4
  is_nullable: 0

=head2 maxattempts

  data_type: 'smallint'
  default_value: 5
  is_nullable: 0

=head2 review

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 nextpagedefault

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 feedback

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 minquestions

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 maxpages

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 timelimit

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 retake

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 activitylink

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 mediafile

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 mediaheight

  data_type: 'bigint'
  default_value: 100
  is_nullable: 0

=head2 mediawidth

  data_type: 'bigint'
  default_value: 650
  is_nullable: 0

=head2 mediaclose

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 slideshow

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 width

  data_type: 'bigint'
  default_value: 640
  is_nullable: 0

=head2 height

  data_type: 'bigint'
  default_value: 480
  is_nullable: 0

=head2 bgcolor

  data_type: 'varchar'
  default_value: '#FFFFFF'
  is_nullable: 0
  size: 7

=head2 displayleft

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 displayleftif

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 progressbar

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 available

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 deadline

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 completionendreached

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 completiontimespent

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_lesson_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 1 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "practice",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "modattempts",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "usepassword",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "password",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "dependency",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "conditions",
  { data_type => "text", is_nullable => 0 },
  "grade",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "custom",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "ongoing",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "usemaxgrade",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "maxanswers",
  { data_type => "smallint", default_value => 4, is_nullable => 0 },
  "maxattempts",
  { data_type => "smallint", default_value => 5, is_nullable => 0 },
  "review",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "nextpagedefault",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "feedback",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "minquestions",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "maxpages",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timelimit",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "retake",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "activitylink",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "mediafile",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "mediaheight",
  { data_type => "bigint", default_value => 100, is_nullable => 0 },
  "mediawidth",
  { data_type => "bigint", default_value => 650, is_nullable => 0 },
  "mediaclose",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "slideshow",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "width",
  { data_type => "bigint", default_value => 640, is_nullable => 0 },
  "height",
  { data_type => "bigint", default_value => 480, is_nullable => 0 },
  "bgcolor",
  {
    data_type => "varchar",
    default_value => "#FFFFFF",
    is_nullable => 0,
    size => 7,
  },
  "displayleft",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "displayleftif",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "progressbar",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "available",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "deadline",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "completionendreached",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "completiontimespent",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WnEHYbuf4t317TDYm/iinA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
