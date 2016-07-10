use utf8;
package DB::Schema::Result::MdlQuizOverviewRegrades;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizOverviewRegrades

=head1 DESCRIPTION

This table records which question attempts need regrading and the grade they will be regraded to.

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

=head1 TABLE: C<mdl_quiz_overview_regrades>

=cut

__PACKAGE__->table("mdl_quiz_overview_regrades");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_overview_regrades_id_seq'

=head2 questionusageid

  data_type: 'bigint'
  is_nullable: 0

=head2 slot

  data_type: 'bigint'
  is_nullable: 0

=head2 newfraction

  data_type: 'numeric'
  is_nullable: 1
  size: [12,7]

=head2 oldfraction

  data_type: 'numeric'
  is_nullable: 1
  size: [12,7]

=head2 regraded

  data_type: 'smallint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_quiz_overview_regrades_id_seq",
  },
  "questionusageid",
  { data_type => "bigint", is_nullable => 0 },
  "slot",
  { data_type => "bigint", is_nullable => 0 },
  "newfraction",
  { data_type => "numeric", is_nullable => 1, size => [12, 7] },
  "oldfraction",
  { data_type => "numeric", is_nullable => 1, size => [12, 7] },
  "regraded",
  { data_type => "smallint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A4ykGzyReBTCXFc5ps1PEA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
