use utf8;
package DB::Schema::Result::MdlQuizReports;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQuizReports

=head1 DESCRIPTION

Lists all the installed quiz reports and their display order and so on. No need to worry about deleting old records. Only records with an equivalent directory are displayed.

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

=head1 TABLE: C<mdl_quiz_reports>

=cut

__PACKAGE__->table("mdl_quiz_reports");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_quiz_reports_id_seq'

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 displayorder

  data_type: 'bigint'
  is_nullable: 0

=head2 capability

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
    sequence          => "mdl_quiz_reports_id_seq",
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "displayorder",
  { data_type => "bigint", is_nullable => 0 },
  "capability",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_quizrepo_nam_uix>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_quizrepo_nam_uix", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HsuOz7bNVA48O2VqK+xUOw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
