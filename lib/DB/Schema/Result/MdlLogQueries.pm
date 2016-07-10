use utf8;
package DB::Schema::Result::MdlLogQueries;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlLogQueries - Logged database queries.

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

=head1 TABLE: C<mdl_log_queries>

=cut

__PACKAGE__->table("mdl_log_queries");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_log_queries_id_seq'

=head2 qtype

  data_type: 'integer'
  is_nullable: 0

=head2 sqltext

  data_type: 'text'
  is_nullable: 0

=head2 sqlparams

  data_type: 'text'
  is_nullable: 1

=head2 error

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 info

  data_type: 'text'
  is_nullable: 1

=head2 backtrace

  data_type: 'text'
  is_nullable: 1

=head2 exectime

  data_type: 'numeric'
  is_nullable: 0
  size: [10,5]

=head2 timelogged

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_log_queries_id_seq",
  },
  "qtype",
  { data_type => "integer", is_nullable => 0 },
  "sqltext",
  { data_type => "text", is_nullable => 0 },
  "sqlparams",
  { data_type => "text", is_nullable => 1 },
  "error",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "info",
  { data_type => "text", is_nullable => 1 },
  "backtrace",
  { data_type => "text", is_nullable => 1 },
  "exectime",
  { data_type => "numeric", is_nullable => 0, size => [10, 5] },
  "timelogged",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:t8UksKxz0T66thDAL+Q3Zg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
