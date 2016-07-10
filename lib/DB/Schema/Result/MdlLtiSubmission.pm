use utf8;
package DB::Schema::Result::MdlLtiSubmission;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLtiSubmission - Keeps track of individual submissions for LTI activities.

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

=head1 TABLE: C<mdl_lti_submission>

=cut

__PACKAGE__->table("mdl_lti_submission");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_lti_submission_id_seq'

=head2 ltiid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 datesubmitted

  data_type: 'bigint'
  is_nullable: 0

=head2 dateupdated

  data_type: 'bigint'
  is_nullable: 0

=head2 gradepercent

  data_type: 'numeric'
  is_nullable: 0
  size: [10,5]

=head2 originalgrade

  data_type: 'numeric'
  is_nullable: 0
  size: [10,5]

=head2 launchid

  data_type: 'bigint'
  is_nullable: 0

=head2 state

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_lti_submission_id_seq",
  },
  "ltiid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "datesubmitted",
  { data_type => "bigint", is_nullable => 0 },
  "dateupdated",
  { data_type => "bigint", is_nullable => 0 },
  "gradepercent",
  { data_type => "numeric", is_nullable => 0, size => [10, 5] },
  "originalgrade",
  { data_type => "numeric", is_nullable => 0, size => [10, 5] },
  "launchid",
  { data_type => "bigint", is_nullable => 0 },
  "state",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eDHzZTGpTBtZcYH38ZvrDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
