use utf8;
package DB::BettSchema::Result::Exercise;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Exercise

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<exercise>

=cut

__PACKAGE__->table("exercise");

=head1 ACCESSORS

=head2 type

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 genre

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=cut

__PACKAGE__->add_columns(
  "type",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "genre",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "id",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</genre>

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("genre", "id");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:srLy6Jjke9EaaHHnftDesA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
