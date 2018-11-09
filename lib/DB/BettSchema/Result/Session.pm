use utf8;
package DB::BettSchema::Result::Session;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::BettSchema::Result::Session

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<session>

=cut

__PACKAGE__->table("session");

=head1 ACCESSORS

=head2 id

  data_type: 'char'
  is_nullable: 0
  size: 72

=head2 session_data

  data_type: 'varchar'
  is_nullable: 1
  size: 7500

=head2 expires

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "char", is_nullable => 0, size => 72 },
  "session_data",
  { data_type => "varchar", is_nullable => 1, size => 7500 },
  "expires",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07048 @ 2018-11-09 12:04:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xh91ubPR7zT2pMCIP+zYgg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
