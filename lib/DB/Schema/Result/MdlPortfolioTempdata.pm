use utf8;
package DB::Schema::Result::MdlPortfolioTempdata;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlPortfolioTempdata

=head1 DESCRIPTION

stores temporary data for portfolio exports. the id of this table is used for the itemid for the temporary files area.  cron can clean up stale records (and associated file data) after expirytime.

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

=head1 TABLE: C<mdl_portfolio_tempdata>

=cut

__PACKAGE__->table("mdl_portfolio_tempdata");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_portfolio_tempdata_id_seq'

=head2 data

  data_type: 'text'
  is_nullable: 1

=head2 expirytime

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  is_nullable: 0

=head2 instance

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

=head2 queued

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_portfolio_tempdata_id_seq",
  },
  "data",
  { data_type => "text", is_nullable => 1 },
  "expirytime",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", is_nullable => 0 },
  "instance",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "queued",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0hIwU8iCR1FmKst61JZkeQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
