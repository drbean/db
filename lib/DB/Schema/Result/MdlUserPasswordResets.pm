use utf8;
package DB::Schema::Result::MdlUserPasswordResets;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlUserPasswordResets - table tracking password reset confirmation tokens

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

=head1 TABLE: C<mdl_user_password_resets>

=cut

__PACKAGE__->table("mdl_user_password_resets");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_user_password_resets_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 timerequested

  data_type: 'bigint'
  is_nullable: 0

=head2 timererequested

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 token

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_user_password_resets_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "timerequested",
  { data_type => "bigint", is_nullable => 0 },
  "timererequested",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "token",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Oz6ROp4Et08UTVQ7KgE0mg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
