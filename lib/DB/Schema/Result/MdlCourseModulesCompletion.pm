use utf8;
package DB::Schema::Result::MdlCourseModulesCompletion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlCourseModulesCompletion

=head1 DESCRIPTION

Stores the completion state (completed or not completed, etc) of each user on each activity.

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

=head1 TABLE: C<mdl_course_modules_completion>

=cut

__PACKAGE__->table("mdl_course_modules_completion");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_course_modules_completion_id_seq'

=head2 coursemoduleid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 completionstate

  data_type: 'smallint'
  is_nullable: 0

=head2 viewed

  data_type: 'smallint'
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_course_modules_completion_id_seq",
  },
  "coursemoduleid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "completionstate",
  { data_type => "smallint", is_nullable => 0 },
  "viewed",
  { data_type => "smallint", is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_courmoducomp_usecou_uix>

=over 4

=item * L</userid>

=item * L</coursemoduleid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_courmoducomp_usecou_uix", ["userid", "coursemoduleid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GJJJU5fYvsxANFYAjNEKiA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
