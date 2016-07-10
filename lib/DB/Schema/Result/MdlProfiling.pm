use utf8;
package DB::Schema::Result::MdlProfiling;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlProfiling - Stores the results of all the profiling runs

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

=head1 TABLE: C<mdl_profiling>

=cut

__PACKAGE__->table("mdl_profiling");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_profiling_id_seq'

=head2 runid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 data

  data_type: 'text'
  is_nullable: 0

=head2 totalexecutiontime

  data_type: 'bigint'
  is_nullable: 0

=head2 totalcputime

  data_type: 'bigint'
  is_nullable: 0

=head2 totalcalls

  data_type: 'bigint'
  is_nullable: 0

=head2 totalmemory

  data_type: 'bigint'
  is_nullable: 0

=head2 runreference

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 runcomment

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_profiling_id_seq",
  },
  "runid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "data",
  { data_type => "text", is_nullable => 0 },
  "totalexecutiontime",
  { data_type => "bigint", is_nullable => 0 },
  "totalcputime",
  { data_type => "bigint", is_nullable => 0 },
  "totalcalls",
  { data_type => "bigint", is_nullable => 0 },
  "totalmemory",
  { data_type => "bigint", is_nullable => 0 },
  "runreference",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "runcomment",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_prof_run_uix>

=over 4

=item * L</runid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_prof_run_uix", ["runid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eEn3XenGUZtY9FwzPVWs/w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
