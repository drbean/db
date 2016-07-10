use utf8;
package DB::Schema::Result::MdlBadgeManualAward;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBadgeManualAward - Track manual award criteria for badges

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

=head1 TABLE: C<mdl_badge_manual_award>

=cut

__PACKAGE__->table("mdl_badge_manual_award");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_badge_manual_award_id_seq'

=head2 badgeid

  data_type: 'bigint'
  is_nullable: 0

=head2 recipientid

  data_type: 'bigint'
  is_nullable: 0

=head2 issuerid

  data_type: 'bigint'
  is_nullable: 0

=head2 issuerrole

  data_type: 'bigint'
  is_nullable: 0

=head2 datemet

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_badge_manual_award_id_seq",
  },
  "badgeid",
  { data_type => "bigint", is_nullable => 0 },
  "recipientid",
  { data_type => "bigint", is_nullable => 0 },
  "issuerid",
  { data_type => "bigint", is_nullable => 0 },
  "issuerrole",
  { data_type => "bigint", is_nullable => 0 },
  "datemet",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Hf1b88cvLFe5ETVD1XqSIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
