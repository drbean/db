use utf8;
package DB::Schema::Result::MdlQuizOverrides;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizOverrides

=head1 DESCRIPTION

The overrides to quiz settings on a per-user and per-group basis.

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

=head1 TABLE: C<mdl_quiz_overrides>

=cut

__PACKAGE__->table("mdl_quiz_overrides");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_overrides_id_seq'

=head2 quiz

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 groupid

  data_type: 'bigint'
  is_nullable: 1

=head2 userid

  data_type: 'bigint'
  is_nullable: 1

=head2 timeopen

  data_type: 'bigint'
  is_nullable: 1

=head2 timeclose

  data_type: 'bigint'
  is_nullable: 1

=head2 timelimit

  data_type: 'bigint'
  is_nullable: 1

=head2 attempts

  data_type: 'integer'
  is_nullable: 1

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_overrides_id_seq",
  },
  "quiz",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "groupid",
  { data_type => "bigint", is_nullable => 1 },
  "userid",
  { data_type => "bigint", is_nullable => 1 },
  "timeopen",
  { data_type => "bigint", is_nullable => 1 },
  "timeclose",
  { data_type => "bigint", is_nullable => 1 },
  "timelimit",
  { data_type => "bigint", is_nullable => 1 },
  "attempts",
  { data_type => "integer", is_nullable => 1 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OwjiW51AHiAU019yG1GCyw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
