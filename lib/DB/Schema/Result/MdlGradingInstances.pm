use utf8;
package DB::Schema::Result::MdlGradingInstances;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradingInstances

=head1 DESCRIPTION

Grading form instance is an assessment record for one gradable item assessed by one rater

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

=head1 TABLE: C<mdl_grading_instances>

=cut

__PACKAGE__->table("mdl_grading_instances");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grading_instances_id_seq'

=head2 definitionid

  data_type: 'bigint'
  is_nullable: 0

=head2 raterid

  data_type: 'bigint'
  is_nullable: 0

=head2 itemid

  data_type: 'bigint'
  is_nullable: 1

=head2 rawgrade

  data_type: 'numeric'
  is_nullable: 1
  size: [10,5]

=head2 status

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 feedback

  data_type: 'text'
  is_nullable: 1

=head2 feedbackformat

  data_type: 'smallint'
  is_nullable: 1

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
    sequence          => "mdl_grading_instances_id_seq",
  },
  "definitionid",
  { data_type => "bigint", is_nullable => 0 },
  "raterid",
  { data_type => "bigint", is_nullable => 0 },
  "itemid",
  { data_type => "bigint", is_nullable => 1 },
  "rawgrade",
  { data_type => "numeric", is_nullable => 1, size => [10, 5] },
  "status",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "feedback",
  { data_type => "text", is_nullable => 1 },
  "feedbackformat",
  { data_type => "smallint", is_nullable => 1 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D0zIBq3FRjeB4pkAwL9qKA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
