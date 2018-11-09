use utf8;
package DB::BettSchema::Result::Try;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Try

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<try>

=cut

__PACKAGE__->table("try");

=head1 ACCESSORS

=head2 exercise

  data_type: 'text'
  is_nullable: 0

=head2 player

  data_type: 'text'
  is_nullable: 0

=head2 league

  data_type: 'text'
  is_nullable: 0

=head2 try

  data_type: 'integer'
  is_nullable: 0

=head2 quoted

  data_type: 'text'
  is_nullable: 1

=head2 answer

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "exercise",
  { data_type => "text", is_nullable => 0 },
  "player",
  { data_type => "text", is_nullable => 0 },
  "league",
  { data_type => "text", is_nullable => 0 },
  "try",
  { data_type => "integer", is_nullable => 0 },
  "quoted",
  { data_type => "text", is_nullable => 1 },
  "answer",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</player>

=item * L</league>

=item * L</exercise>

=item * L</try>

=back

=cut

__PACKAGE__->set_primary_key("player", "league", "exercise", "try");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:R0NWO/dv5B+D3fGrb5DlLg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
