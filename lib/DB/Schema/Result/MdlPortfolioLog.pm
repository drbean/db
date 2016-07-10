use utf8;
package DB::Schema::Result::MdlPortfolioLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlPortfolioLog

=head1 DESCRIPTION

log of portfolio transfers (used to later check for duplicates)

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

=head1 TABLE: C<mdl_portfolio_log>

=cut

__PACKAGE__->table("mdl_portfolio_log");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_portfolio_log_id_seq'

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 time

  data_type: 'bigint'
  is_nullable: 0

=head2 portfolio

  data_type: 'bigint'
  is_nullable: 0

=head2 caller_class

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 150

=head2 caller_file

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 caller_component

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 caller_sha1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 tempdataid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 returnurl

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 continueurl

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
    sequence          => "mdl_portfolio_log_id_seq",
  },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "time",
  { data_type => "bigint", is_nullable => 0 },
  "portfolio",
  { data_type => "bigint", is_nullable => 0 },
  "caller_class",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 150 },
  "caller_file",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "caller_component",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "caller_sha1",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "tempdataid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "returnurl",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "continueurl",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XtdHRCqSnHmTsiaiXGDbdA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
