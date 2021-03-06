use utf8;
package DB::Schema::Result::MdlLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLog - Every action is logged as far as possible

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

=head1 TABLE: C<mdl_log>

=cut

__PACKAGE__->table("mdl_log");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_log_id_seq'

=head2 time

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 ip

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 course

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 module

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 cmid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 action

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 info

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_log_id_seq",
  },
  "time",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "ip",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "course",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "module",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "cmid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "action",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "info",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4acesQcZdhRX7ersQ/gc3A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
