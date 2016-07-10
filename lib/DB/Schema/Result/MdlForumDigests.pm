use utf8;
package DB::Schema::Result::MdlForumDigests;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlForumDigests - Keeps track of user mail delivery preferences for each forum

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

=head1 TABLE: C<mdl_forum_digests>

=cut

__PACKAGE__->table("mdl_forum_digests");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_forum_digests_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 forum

  data_type: 'bigint'
  is_nullable: 0

=head2 maildigest

  data_type: 'smallint'
  default_value: -1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_forum_digests_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "forum",
  { data_type => "bigint", is_nullable => 0 },
  "maildigest",
  { data_type => "smallint", default_value => -1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_forudige_forusemai_uix>

=over 4

=item * L</forum>

=item * L</userid>

=item * L</maildigest>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_forudige_forusemai_uix",
  ["forum", "userid", "maildigest"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ugVLhNvQQoDcXZK7j8XgUQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
