use utf8;
package DB::BettSchema::Result::Character;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Character

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<character>

=cut

__PACKAGE__->table("character");

=head1 ACCESSORS

=head2 entity

  data_type: 'text'
  is_nullable: 0

=head2 string

  data_type: 'text'
  is_nullable: 1

=head2 exercise

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "entity",
  { data_type => "text", is_nullable => 0 },
  "string",
  { data_type => "text", is_nullable => 1 },
  "exercise",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</entity>

=item * L</exercise>

=back

=cut

__PACKAGE__->set_primary_key("entity", "exercise");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q6LldI2Liw5ZV9yqTdr/qA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
