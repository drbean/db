use utf8;
package DB::Schema::Result::MdlFeedback;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlFeedback - all feedbacks

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

=head1 TABLE: C<mdl_feedback>

=cut

__PACKAGE__->table("mdl_feedback");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_feedback_id_seq'

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

=head2 anonymous

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 email_notification

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 multiple_submit

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 autonumbering

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 site_after_submit

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 page_after_submit

  data_type: 'text'
  is_nullable: 0

=head2 page_after_submitformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 publish_stats

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
    sequence          => "mdl_feedback_id_seq",
  },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "intro",
  { data_type => "text", is_nullable => 0 },
  "introformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "anonymous",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "email_notification",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "multiple_submit",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "autonumbering",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "site_after_submit",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "page_after_submit",
  { data_type => "text", is_nullable => 0 },
  "page_after_submitformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "publish_stats",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "timeopen",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timeclose",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9XRU+U4WqA+ZYvyew1nhFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
